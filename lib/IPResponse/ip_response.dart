import 'package:flutter/material.dart' show required;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:meta/meta.dart';

part 'ip_response.freezed.dart';
part 'ip_response.g.dart';

@freezed
abstract class IpResponse with _$IpResponse {
  @JsonSerializable(explicitToJson: true)
  const factory IpResponse({
    @required
    @nullable
    @JsonKey(name: 'organization_name')
        String organizationName,
    @required @nullable String region,
    @required @nullable int accuracy,
    @required @nullable int asn,
    @required @nullable String organization,
    @required @nullable String timezone,
    @required @nullable String longitude,
    @required @nullable @JsonKey(name: 'country_code3') String countryCode3,
    @required @nullable @JsonKey(name: 'area_code') String areaCode,
    @required @nullable String ip,
    @required @nullable String city,
    @required @nullable String country,
    @required @nullable @JsonKey(name: 'continent_code') String continentCode,
    @required @nullable @JsonKey(name: 'country_code') String countryCode,
    @required @nullable String latitude,
  }) = _IpResponse;

  factory IpResponse.fromJson(Map<String, dynamic> json) =>
      _$IpResponseFromJson(json);
}
