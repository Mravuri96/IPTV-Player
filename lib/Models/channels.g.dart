// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channels.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Channels _$_$_ChannelsFromJson(Map json) {
  return $checkedNew(r'_$_Channels', json, () {
    final val = _$_Channels(
      name: $checkedConvert(json, 'name', (v) => v as String),
      logo: $checkedConvert(json, 'logo', (v) => v as String),
      url: $checkedConvert(json, 'url', (v) => v as String),
      category: $checkedConvert(json, 'category', (v) => v as String),
      language: $checkedConvert(
          json,
          'language',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : Country.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
      country: $checkedConvert(
          json,
          'country',
          (v) => v == null
              ? null
              : Country.fromJson((v as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                ))),
      tvg: $checkedConvert(
          json,
          'tvg',
          (v) => v == null
              ? null
              : Tvg.fromJson((v as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                ))),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_ChannelsToJson(_$_Channels instance) =>
    <String, dynamic>{
      'name': instance.name,
      'logo': instance.logo,
      'url': instance.url,
      'category': instance.category,
      'language': instance.language,
      'country': instance.country,
      'tvg': instance.tvg,
    };

_$_Country _$_$_CountryFromJson(Map json) {
  return $checkedNew(r'_$_Country', json, () {
    final val = _$_Country(
      code: $checkedConvert(json, 'code', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_CountryToJson(_$_Country instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };

_$_Tvg _$_$_TvgFromJson(Map json) {
  return $checkedNew(r'_$_Tvg', json, () {
    final val = _$_Tvg(
      id: $checkedConvert(json, 'id', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      url: $checkedConvert(json, 'url', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_TvgToJson(_$_Tvg instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
    };
