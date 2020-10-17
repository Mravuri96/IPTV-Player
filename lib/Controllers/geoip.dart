import 'package:dio/dio.dart' show BaseOptions, Dio;
import 'package:dio_flutter_transformer/dio_flutter_transformer.dart'
    show FlutterTransformer;
import 'package:flutter/foundation.dart' show ChangeNotifier, kDebugMode;
import 'package:intl/intl.dart' show DateFormat;
import 'package:logger/logger.dart' show Level, Logger;

import '../models/IPResponse/ip_response.dart' show IpResponse;

class GetIp extends ChangeNotifier {
  IpResponse _ipResponse;

  IpResponse get ipResponse => _ipResponse;

  set ipResponse(IpResponse value) {
    _ipResponse = value;
    notifyListeners();
  }

  Future<void> pushToGoogleSheets(IpResponse data) async {
    final _timestamp = DateFormat('yMMMd').add_jms().format(DateTime.now());

    final _ipData = '?ip='
        '${data.ip}'
        '&city=${data.city}'
        '&state=${data.region}'
        '&country=${data.country}'
        '&countrycode=${data.countryCode3}'
        '&continent=${data.continentCode}'
        '&timezone=${data.timezone}'
        '&latitude=${data.latitude}'
        '&longitude=${data.longitude}'
        '&timestamp=${_timestamp.trim()}'
        '&app=IPTV';

    const url =
        'https://script.google.com/macros/s/AKfycbzVyS8yl7aVB_-lgchZTu8b2EV1Tcb6iyPlS3ACuiMPBq3ihc4/exec';

    try {
      await Dio()
          .get(
            url + _ipData,
          )
          .then(
            (value) => value.statusCode == 200
                ? Logger().log(Level.debug, 'Upload to Gsheets')
                : Logger().log(Level.debug, 'Upload Unsucessful'),
          );
    } on Exception catch (e) {
      Exception(e);
    }
  }

  Future<void> figureOut() async {
    final dio = Dio()
      ..options =
          BaseOptions(baseUrl: 'https://get.geojs.io', connectTimeout: 5)
      ..transformer = FlutterTransformer();

    final resp = await dio
        .get(
          '/v1/ip/geo.json',
        )
        .whenComplete(
          () => Logger().log(Level.debug, 'Got User Location'),
        )
        .catchError(
          (e) => Exception(
            e,
          ),
        )
        .then(
      (value) {
        ipResponse = IpResponse.fromJson(value.data as Map<String, dynamic>);
        if (ipResponse != null && !kDebugMode) {
          pushToGoogleSheets(ipResponse);
        }
        return ipResponse;
      },
    );
    return resp;
  }
}
