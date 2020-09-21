// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iptvcat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IPTVCATMODEL _$_$_IPTVCATMODELFromJson(Map json) {
  return $checkedNew(r'_$_IPTVCATMODEL', json, () {
    final val = _$_IPTVCATMODEL(
      id: $checkedConvert(json, 'id', (v) => v as String),
      channel: $checkedConvert(json, 'channel', (v) => v as String),
      link: $checkedConvert(json, 'link', (v) => v as String),
      country: $checkedConvert(json, 'country', (v) => v as String),
      liveliness: $checkedConvert(json, 'liveliness', (v) => v as String),
      status: $checkedConvert(json, 'status', (v) => v as String),
      lastChecked: $checkedConvert(json, 'lastChecked',
          (v) => v == null ? null : DateTime.parse(v as String)),
      format: $checkedConvert(json, 'format', (v) => v as String),
      mbps: $checkedConvert(json, 'mbps', (v) => v as String),
      uri: $checkedConvert(
          json, 'uri', (v) => (v as List)?.map((e) => e as String)?.toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_IPTVCATMODELToJson(_$_IPTVCATMODEL instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channel': instance.channel,
      'link': instance.link,
      'country': instance.country,
      'liveliness': instance.liveliness,
      'status': instance.status,
      'lastChecked': instance.lastChecked?.toIso8601String(),
      'format': instance.format,
      'mbps': instance.mbps,
      'uri': instance.uri,
    };
