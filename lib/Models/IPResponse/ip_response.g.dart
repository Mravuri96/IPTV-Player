// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ip_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IpResponse _$_$_IpResponseFromJson(Map json) {
  return $checkedNew(r'_$_IpResponse', json, () {
    final val = _$_IpResponse(
      organizationName:
          $checkedConvert(json, 'organization_name', (v) => v as String),
      region: $checkedConvert(json, 'region', (v) => v as String),
      accuracy: $checkedConvert(json, 'accuracy', (v) => v as int),
      asn: $checkedConvert(json, 'asn', (v) => v as int),
      organization: $checkedConvert(json, 'organization', (v) => v as String),
      timezone: $checkedConvert(json, 'timezone', (v) => v as String),
      longitude: $checkedConvert(json, 'longitude', (v) => v as String),
      countryCode3: $checkedConvert(json, 'country_code3', (v) => v as String),
      areaCode: $checkedConvert(json, 'area_code', (v) => v as String),
      ip: $checkedConvert(json, 'ip', (v) => v as String),
      city: $checkedConvert(json, 'city', (v) => v as String),
      country: $checkedConvert(json, 'country', (v) => v as String),
      continentCode:
          $checkedConvert(json, 'continent_code', (v) => v as String),
      countryCode: $checkedConvert(json, 'country_code', (v) => v as String),
      latitude: $checkedConvert(json, 'latitude', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {
    'organizationName': 'organization_name',
    'countryCode3': 'country_code3',
    'areaCode': 'area_code',
    'continentCode': 'continent_code',
    'countryCode': 'country_code'
  });
}

Map<String, dynamic> _$_$_IpResponseToJson(_$_IpResponse instance) =>
    <String, dynamic>{
      'organization_name': instance.organizationName,
      'region': instance.region,
      'accuracy': instance.accuracy,
      'asn': instance.asn,
      'organization': instance.organization,
      'timezone': instance.timezone,
      'longitude': instance.longitude,
      'country_code3': instance.countryCode3,
      'area_code': instance.areaCode,
      'ip': instance.ip,
      'city': instance.city,
      'country': instance.country,
      'continent_code': instance.continentCode,
      'country_code': instance.countryCode,
      'latitude': instance.latitude,
    };
