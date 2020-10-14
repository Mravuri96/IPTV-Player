// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'ip_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
IpResponse _$IpResponseFromJson(Map<String, dynamic> json) {
  return _IpResponse.fromJson(json);
}

/// @nodoc
class _$IpResponseTearOff {
  const _$IpResponseTearOff();

// ignore: unused_element
  _IpResponse call(
      {@required
      @nullable
      @JsonKey(name: 'organization_name')
          String organizationName,
      @required
      @nullable
          String region,
      @required
      @nullable
          int accuracy,
      @required
      @nullable
          int asn,
      @required
      @nullable
          String organization,
      @required
      @nullable
          String timezone,
      @required
      @nullable
          String longitude,
      @required
      @nullable
      @JsonKey(name: 'country_code3')
          String countryCode3,
      @required
      @nullable
      @JsonKey(name: 'area_code')
          String areaCode,
      @required
      @nullable
          String ip,
      @required
      @nullable
          String city,
      @required
      @nullable
          String country,
      @required
      @nullable
      @JsonKey(name: 'continent_code')
          String continentCode,
      @required
      @nullable
      @JsonKey(name: 'country_code')
          String countryCode,
      @required
      @nullable
          String latitude}) {
    return _IpResponse(
      organizationName: organizationName,
      region: region,
      accuracy: accuracy,
      asn: asn,
      organization: organization,
      timezone: timezone,
      longitude: longitude,
      countryCode3: countryCode3,
      areaCode: areaCode,
      ip: ip,
      city: city,
      country: country,
      continentCode: continentCode,
      countryCode: countryCode,
      latitude: latitude,
    );
  }

// ignore: unused_element
  IpResponse fromJson(Map<String, Object> json) {
    return IpResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $IpResponse = _$IpResponseTearOff();

/// @nodoc
mixin _$IpResponse {
  @nullable
  @JsonKey(name: 'organization_name')
  String get organizationName;
  @nullable
  String get region;
  @nullable
  int get accuracy;
  @nullable
  int get asn;
  @nullable
  String get organization;
  @nullable
  String get timezone;
  @nullable
  String get longitude;
  @nullable
  @JsonKey(name: 'country_code3')
  String get countryCode3;
  @nullable
  @JsonKey(name: 'area_code')
  String get areaCode;
  @nullable
  String get ip;
  @nullable
  String get city;
  @nullable
  String get country;
  @nullable
  @JsonKey(name: 'continent_code')
  String get continentCode;
  @nullable
  @JsonKey(name: 'country_code')
  String get countryCode;
  @nullable
  String get latitude;

  Map<String, dynamic> toJson();
  $IpResponseCopyWith<IpResponse> get copyWith;
}

/// @nodoc
abstract class $IpResponseCopyWith<$Res> {
  factory $IpResponseCopyWith(
          IpResponse value, $Res Function(IpResponse) then) =
      _$IpResponseCopyWithImpl<$Res>;
  $Res call(
      {@nullable @JsonKey(name: 'organization_name') String organizationName,
      @nullable String region,
      @nullable int accuracy,
      @nullable int asn,
      @nullable String organization,
      @nullable String timezone,
      @nullable String longitude,
      @nullable @JsonKey(name: 'country_code3') String countryCode3,
      @nullable @JsonKey(name: 'area_code') String areaCode,
      @nullable String ip,
      @nullable String city,
      @nullable String country,
      @nullable @JsonKey(name: 'continent_code') String continentCode,
      @nullable @JsonKey(name: 'country_code') String countryCode,
      @nullable String latitude});
}

/// @nodoc
class _$IpResponseCopyWithImpl<$Res> implements $IpResponseCopyWith<$Res> {
  _$IpResponseCopyWithImpl(this._value, this._then);

  final IpResponse _value;
  // ignore: unused_field
  final $Res Function(IpResponse) _then;

  @override
  $Res call({
    Object organizationName = freezed,
    Object region = freezed,
    Object accuracy = freezed,
    Object asn = freezed,
    Object organization = freezed,
    Object timezone = freezed,
    Object longitude = freezed,
    Object countryCode3 = freezed,
    Object areaCode = freezed,
    Object ip = freezed,
    Object city = freezed,
    Object country = freezed,
    Object continentCode = freezed,
    Object countryCode = freezed,
    Object latitude = freezed,
  }) {
    return _then(_value.copyWith(
      organizationName: organizationName == freezed
          ? _value.organizationName
          : organizationName as String,
      region: region == freezed ? _value.region : region as String,
      accuracy: accuracy == freezed ? _value.accuracy : accuracy as int,
      asn: asn == freezed ? _value.asn : asn as int,
      organization: organization == freezed
          ? _value.organization
          : organization as String,
      timezone: timezone == freezed ? _value.timezone : timezone as String,
      longitude: longitude == freezed ? _value.longitude : longitude as String,
      countryCode3: countryCode3 == freezed
          ? _value.countryCode3
          : countryCode3 as String,
      areaCode: areaCode == freezed ? _value.areaCode : areaCode as String,
      ip: ip == freezed ? _value.ip : ip as String,
      city: city == freezed ? _value.city : city as String,
      country: country == freezed ? _value.country : country as String,
      continentCode: continentCode == freezed
          ? _value.continentCode
          : continentCode as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      latitude: latitude == freezed ? _value.latitude : latitude as String,
    ));
  }
}

/// @nodoc
abstract class _$IpResponseCopyWith<$Res> implements $IpResponseCopyWith<$Res> {
  factory _$IpResponseCopyWith(
          _IpResponse value, $Res Function(_IpResponse) then) =
      __$IpResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable @JsonKey(name: 'organization_name') String organizationName,
      @nullable String region,
      @nullable int accuracy,
      @nullable int asn,
      @nullable String organization,
      @nullable String timezone,
      @nullable String longitude,
      @nullable @JsonKey(name: 'country_code3') String countryCode3,
      @nullable @JsonKey(name: 'area_code') String areaCode,
      @nullable String ip,
      @nullable String city,
      @nullable String country,
      @nullable @JsonKey(name: 'continent_code') String continentCode,
      @nullable @JsonKey(name: 'country_code') String countryCode,
      @nullable String latitude});
}

/// @nodoc
class __$IpResponseCopyWithImpl<$Res> extends _$IpResponseCopyWithImpl<$Res>
    implements _$IpResponseCopyWith<$Res> {
  __$IpResponseCopyWithImpl(
      _IpResponse _value, $Res Function(_IpResponse) _then)
      : super(_value, (v) => _then(v as _IpResponse));

  @override
  _IpResponse get _value => super._value as _IpResponse;

  @override
  $Res call({
    Object organizationName = freezed,
    Object region = freezed,
    Object accuracy = freezed,
    Object asn = freezed,
    Object organization = freezed,
    Object timezone = freezed,
    Object longitude = freezed,
    Object countryCode3 = freezed,
    Object areaCode = freezed,
    Object ip = freezed,
    Object city = freezed,
    Object country = freezed,
    Object continentCode = freezed,
    Object countryCode = freezed,
    Object latitude = freezed,
  }) {
    return _then(_IpResponse(
      organizationName: organizationName == freezed
          ? _value.organizationName
          : organizationName as String,
      region: region == freezed ? _value.region : region as String,
      accuracy: accuracy == freezed ? _value.accuracy : accuracy as int,
      asn: asn == freezed ? _value.asn : asn as int,
      organization: organization == freezed
          ? _value.organization
          : organization as String,
      timezone: timezone == freezed ? _value.timezone : timezone as String,
      longitude: longitude == freezed ? _value.longitude : longitude as String,
      countryCode3: countryCode3 == freezed
          ? _value.countryCode3
          : countryCode3 as String,
      areaCode: areaCode == freezed ? _value.areaCode : areaCode as String,
      ip: ip == freezed ? _value.ip : ip as String,
      city: city == freezed ? _value.city : city as String,
      country: country == freezed ? _value.country : country as String,
      continentCode: continentCode == freezed
          ? _value.continentCode
          : continentCode as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      latitude: latitude == freezed ? _value.latitude : latitude as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_IpResponse implements _IpResponse {
  const _$_IpResponse(
      {@required
      @nullable
      @JsonKey(name: 'organization_name')
          this.organizationName,
      @required
      @nullable
          this.region,
      @required
      @nullable
          this.accuracy,
      @required
      @nullable
          this.asn,
      @required
      @nullable
          this.organization,
      @required
      @nullable
          this.timezone,
      @required
      @nullable
          this.longitude,
      @required
      @nullable
      @JsonKey(name: 'country_code3')
          this.countryCode3,
      @required
      @nullable
      @JsonKey(name: 'area_code')
          this.areaCode,
      @required
      @nullable
          this.ip,
      @required
      @nullable
          this.city,
      @required
      @nullable
          this.country,
      @required
      @nullable
      @JsonKey(name: 'continent_code')
          this.continentCode,
      @required
      @nullable
      @JsonKey(name: 'country_code')
          this.countryCode,
      @required
      @nullable
          this.latitude});

  factory _$_IpResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_IpResponseFromJson(json);

  @override
  @nullable
  @JsonKey(name: 'organization_name')
  final String organizationName;
  @override
  @nullable
  final String region;
  @override
  @nullable
  final int accuracy;
  @override
  @nullable
  final int asn;
  @override
  @nullable
  final String organization;
  @override
  @nullable
  final String timezone;
  @override
  @nullable
  final String longitude;
  @override
  @nullable
  @JsonKey(name: 'country_code3')
  final String countryCode3;
  @override
  @nullable
  @JsonKey(name: 'area_code')
  final String areaCode;
  @override
  @nullable
  final String ip;
  @override
  @nullable
  final String city;
  @override
  @nullable
  final String country;
  @override
  @nullable
  @JsonKey(name: 'continent_code')
  final String continentCode;
  @override
  @nullable
  @JsonKey(name: 'country_code')
  final String countryCode;
  @override
  @nullable
  final String latitude;

  @override
  String toString() {
    return 'IpResponse(organizationName: $organizationName, region: $region, accuracy: $accuracy, asn: $asn, organization: $organization, timezone: $timezone, longitude: $longitude, countryCode3: $countryCode3, areaCode: $areaCode, ip: $ip, city: $city, country: $country, continentCode: $continentCode, countryCode: $countryCode, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IpResponse &&
            (identical(other.organizationName, organizationName) ||
                const DeepCollectionEquality()
                    .equals(other.organizationName, organizationName)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)) &&
            (identical(other.accuracy, accuracy) ||
                const DeepCollectionEquality()
                    .equals(other.accuracy, accuracy)) &&
            (identical(other.asn, asn) ||
                const DeepCollectionEquality().equals(other.asn, asn)) &&
            (identical(other.organization, organization) ||
                const DeepCollectionEquality()
                    .equals(other.organization, organization)) &&
            (identical(other.timezone, timezone) ||
                const DeepCollectionEquality()
                    .equals(other.timezone, timezone)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.countryCode3, countryCode3) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode3, countryCode3)) &&
            (identical(other.areaCode, areaCode) ||
                const DeepCollectionEquality()
                    .equals(other.areaCode, areaCode)) &&
            (identical(other.ip, ip) ||
                const DeepCollectionEquality().equals(other.ip, ip)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.continentCode, continentCode) ||
                const DeepCollectionEquality()
                    .equals(other.continentCode, continentCode)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(organizationName) ^
      const DeepCollectionEquality().hash(region) ^
      const DeepCollectionEquality().hash(accuracy) ^
      const DeepCollectionEquality().hash(asn) ^
      const DeepCollectionEquality().hash(organization) ^
      const DeepCollectionEquality().hash(timezone) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(countryCode3) ^
      const DeepCollectionEquality().hash(areaCode) ^
      const DeepCollectionEquality().hash(ip) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(continentCode) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(latitude);

  @override
  _$IpResponseCopyWith<_IpResponse> get copyWith =>
      __$IpResponseCopyWithImpl<_IpResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IpResponseToJson(this);
  }
}

abstract class _IpResponse implements IpResponse {
  const factory _IpResponse(
      {@required
      @nullable
      @JsonKey(name: 'organization_name')
          String organizationName,
      @required
      @nullable
          String region,
      @required
      @nullable
          int accuracy,
      @required
      @nullable
          int asn,
      @required
      @nullable
          String organization,
      @required
      @nullable
          String timezone,
      @required
      @nullable
          String longitude,
      @required
      @nullable
      @JsonKey(name: 'country_code3')
          String countryCode3,
      @required
      @nullable
      @JsonKey(name: 'area_code')
          String areaCode,
      @required
      @nullable
          String ip,
      @required
      @nullable
          String city,
      @required
      @nullable
          String country,
      @required
      @nullable
      @JsonKey(name: 'continent_code')
          String continentCode,
      @required
      @nullable
      @JsonKey(name: 'country_code')
          String countryCode,
      @required
      @nullable
          String latitude}) = _$_IpResponse;

  factory _IpResponse.fromJson(Map<String, dynamic> json) =
      _$_IpResponse.fromJson;

  @override
  @nullable
  @JsonKey(name: 'organization_name')
  String get organizationName;
  @override
  @nullable
  String get region;
  @override
  @nullable
  int get accuracy;
  @override
  @nullable
  int get asn;
  @override
  @nullable
  String get organization;
  @override
  @nullable
  String get timezone;
  @override
  @nullable
  String get longitude;
  @override
  @nullable
  @JsonKey(name: 'country_code3')
  String get countryCode3;
  @override
  @nullable
  @JsonKey(name: 'area_code')
  String get areaCode;
  @override
  @nullable
  String get ip;
  @override
  @nullable
  String get city;
  @override
  @nullable
  String get country;
  @override
  @nullable
  @JsonKey(name: 'continent_code')
  String get continentCode;
  @override
  @nullable
  @JsonKey(name: 'country_code')
  String get countryCode;
  @override
  @nullable
  String get latitude;
  @override
  _$IpResponseCopyWith<_IpResponse> get copyWith;
}
