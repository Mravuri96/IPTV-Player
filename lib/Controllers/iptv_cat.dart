import 'dart:convert';

import 'package:archive/archive_io.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../Models/iptvcat_model.dart';

final $_autoDispose = FutureProvider.autoDispose;

final ipTvCatCatalog = $_autoDispose<List<ArchiveFile>>(
  (ref) async => rootBundle
      .load('assets/streams.zip')
      .then(
        (response) => ZipDecoder()
            .decodeBytes(
              response.buffer.asUint8List(),
            )
            .files,
      )
      .whenComplete(() => ref.maintainState = true),
);
final $_autoDisposeFamily = FutureProvider.autoDispose.family;

final countryData = $_autoDisposeFamily<List<IPTVCATMODEL>, String>(
  (ref, String countryName) async => List<IPTVCATMODEL>.from(
    json
        .decode(
          String.fromCharCodes(
            ref
                .watch(ipTvCatCatalog)
                .whenData(
                  (archive) => archive
                      .firstWhere(
                        (file) => file.name.toLowerCase().contains(
                              countryName.toLowerCase().trim(),
                            ),
                      )
                      .content as Iterable<int>,
                )
                ?.data
                ?.value,
          ),
        )
        .map(
          (channel) => IPTVCATMODEL.fromJson(
            channel,
          ),
        ),
  )
      .filter((item) => item.link.contains('https') && item.status == 'online')
      .toHashSet()
      .toList()
        ..mergeSort(
          comparator: (a, b) => a.channel.compareTo(b.channel),
        )
        ..distinctBy(
          (channel) => channel.channel,
        ),
);
