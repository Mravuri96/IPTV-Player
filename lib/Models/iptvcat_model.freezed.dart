// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'iptvcat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
IPTVCATMODEL _$IPTVCATMODELFromJson(Map<String, dynamic> json) {
  return _IPTVCATMODEL.fromJson(json);
}

/// @nodoc
class _$IPTVCATMODELTearOff {
  const _$IPTVCATMODELTearOff();

// ignore: unused_element
  _IPTVCATMODEL call(
      {@HiveField(0) String id,
      @HiveField(1) String channel,
      @HiveField(2) String link,
      @HiveField(3) String country,
      @HiveField(4) String liveliness,
      @HiveField(5) String status,
      @HiveField(6) DateTime lastChecked,
      @HiveField(7) String format,
      @HiveField(8) String mbps,
      @HiveField(9) List<String> uri}) {
    return _IPTVCATMODEL(
      id: id,
      channel: channel,
      link: link,
      country: country,
      liveliness: liveliness,
      status: status,
      lastChecked: lastChecked,
      format: format,
      mbps: mbps,
      uri: uri,
    );
  }

// ignore: unused_element
  IPTVCATMODEL fromJson(Map<String, Object> json) {
    return IPTVCATMODEL.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $IPTVCATMODEL = _$IPTVCATMODELTearOff();

/// @nodoc
mixin _$IPTVCATMODEL {
  @HiveField(0)
  String get id;
  @HiveField(1)
  String get channel;
  @HiveField(2)
  String get link;
  @HiveField(3)
  String get country;
  @HiveField(4)
  String get liveliness;
  @HiveField(5)
  String get status;
  @HiveField(6)
  DateTime get lastChecked;
  @HiveField(7)
  String get format;
  @HiveField(8)
  String get mbps;
  @HiveField(9)
  List<String> get uri;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $IPTVCATMODELCopyWith<IPTVCATMODEL> get copyWith;
}

/// @nodoc
abstract class $IPTVCATMODELCopyWith<$Res> {
  factory $IPTVCATMODELCopyWith(
          IPTVCATMODEL value, $Res Function(IPTVCATMODEL) then) =
      _$IPTVCATMODELCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String channel,
      @HiveField(2) String link,
      @HiveField(3) String country,
      @HiveField(4) String liveliness,
      @HiveField(5) String status,
      @HiveField(6) DateTime lastChecked,
      @HiveField(7) String format,
      @HiveField(8) String mbps,
      @HiveField(9) List<String> uri});
}

/// @nodoc
class _$IPTVCATMODELCopyWithImpl<$Res> implements $IPTVCATMODELCopyWith<$Res> {
  _$IPTVCATMODELCopyWithImpl(this._value, this._then);

  final IPTVCATMODEL _value;
  // ignore: unused_field
  final $Res Function(IPTVCATMODEL) _then;

  @override
  $Res call({
    Object id = freezed,
    Object channel = freezed,
    Object link = freezed,
    Object country = freezed,
    Object liveliness = freezed,
    Object status = freezed,
    Object lastChecked = freezed,
    Object format = freezed,
    Object mbps = freezed,
    Object uri = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      channel: channel == freezed ? _value.channel : channel as String,
      link: link == freezed ? _value.link : link as String,
      country: country == freezed ? _value.country : country as String,
      liveliness:
          liveliness == freezed ? _value.liveliness : liveliness as String,
      status: status == freezed ? _value.status : status as String,
      lastChecked:
          lastChecked == freezed ? _value.lastChecked : lastChecked as DateTime,
      format: format == freezed ? _value.format : format as String,
      mbps: mbps == freezed ? _value.mbps : mbps as String,
      uri: uri == freezed ? _value.uri : uri as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$IPTVCATMODELCopyWith<$Res>
    implements $IPTVCATMODELCopyWith<$Res> {
  factory _$IPTVCATMODELCopyWith(
          _IPTVCATMODEL value, $Res Function(_IPTVCATMODEL) then) =
      __$IPTVCATMODELCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String channel,
      @HiveField(2) String link,
      @HiveField(3) String country,
      @HiveField(4) String liveliness,
      @HiveField(5) String status,
      @HiveField(6) DateTime lastChecked,
      @HiveField(7) String format,
      @HiveField(8) String mbps,
      @HiveField(9) List<String> uri});
}

/// @nodoc
class __$IPTVCATMODELCopyWithImpl<$Res> extends _$IPTVCATMODELCopyWithImpl<$Res>
    implements _$IPTVCATMODELCopyWith<$Res> {
  __$IPTVCATMODELCopyWithImpl(
      _IPTVCATMODEL _value, $Res Function(_IPTVCATMODEL) _then)
      : super(_value, (v) => _then(v as _IPTVCATMODEL));

  @override
  _IPTVCATMODEL get _value => super._value as _IPTVCATMODEL;

  @override
  $Res call({
    Object id = freezed,
    Object channel = freezed,
    Object link = freezed,
    Object country = freezed,
    Object liveliness = freezed,
    Object status = freezed,
    Object lastChecked = freezed,
    Object format = freezed,
    Object mbps = freezed,
    Object uri = freezed,
  }) {
    return _then(_IPTVCATMODEL(
      id: id == freezed ? _value.id : id as String,
      channel: channel == freezed ? _value.channel : channel as String,
      link: link == freezed ? _value.link : link as String,
      country: country == freezed ? _value.country : country as String,
      liveliness:
          liveliness == freezed ? _value.liveliness : liveliness as String,
      status: status == freezed ? _value.status : status as String,
      lastChecked:
          lastChecked == freezed ? _value.lastChecked : lastChecked as DateTime,
      format: format == freezed ? _value.format : format as String,
      mbps: mbps == freezed ? _value.mbps : mbps as String,
      uri: uri == freezed ? _value.uri : uri as List<String>,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 1, adapterName: 'IPTVCATMODELAdapter')

/// @nodoc
class _$_IPTVCATMODEL implements _IPTVCATMODEL {
  const _$_IPTVCATMODEL(
      {@HiveField(0) this.id,
      @HiveField(1) this.channel,
      @HiveField(2) this.link,
      @HiveField(3) this.country,
      @HiveField(4) this.liveliness,
      @HiveField(5) this.status,
      @HiveField(6) this.lastChecked,
      @HiveField(7) this.format,
      @HiveField(8) this.mbps,
      @HiveField(9) this.uri});

  factory _$_IPTVCATMODEL.fromJson(Map<String, dynamic> json) =>
      _$_$_IPTVCATMODELFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String channel;
  @override
  @HiveField(2)
  final String link;
  @override
  @HiveField(3)
  final String country;
  @override
  @HiveField(4)
  final String liveliness;
  @override
  @HiveField(5)
  final String status;
  @override
  @HiveField(6)
  final DateTime lastChecked;
  @override
  @HiveField(7)
  final String format;
  @override
  @HiveField(8)
  final String mbps;
  @override
  @HiveField(9)
  final List<String> uri;

  @override
  String toString() {
    return 'IPTVCATMODEL(id: $id, channel: $channel, link: $link, country: $country, liveliness: $liveliness, status: $status, lastChecked: $lastChecked, format: $format, mbps: $mbps, uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IPTVCATMODEL &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.channel, channel) ||
                const DeepCollectionEquality()
                    .equals(other.channel, channel)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.liveliness, liveliness) ||
                const DeepCollectionEquality()
                    .equals(other.liveliness, liveliness)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.lastChecked, lastChecked) ||
                const DeepCollectionEquality()
                    .equals(other.lastChecked, lastChecked)) &&
            (identical(other.format, format) ||
                const DeepCollectionEquality().equals(other.format, format)) &&
            (identical(other.mbps, mbps) ||
                const DeepCollectionEquality().equals(other.mbps, mbps)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(channel) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(liveliness) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(lastChecked) ^
      const DeepCollectionEquality().hash(format) ^
      const DeepCollectionEquality().hash(mbps) ^
      const DeepCollectionEquality().hash(uri);

  @JsonKey(ignore: true)
  @override
  _$IPTVCATMODELCopyWith<_IPTVCATMODEL> get copyWith =>
      __$IPTVCATMODELCopyWithImpl<_IPTVCATMODEL>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IPTVCATMODELToJson(this);
  }
}

abstract class _IPTVCATMODEL implements IPTVCATMODEL {
  const factory _IPTVCATMODEL(
      {@HiveField(0) String id,
      @HiveField(1) String channel,
      @HiveField(2) String link,
      @HiveField(3) String country,
      @HiveField(4) String liveliness,
      @HiveField(5) String status,
      @HiveField(6) DateTime lastChecked,
      @HiveField(7) String format,
      @HiveField(8) String mbps,
      @HiveField(9) List<String> uri}) = _$_IPTVCATMODEL;

  factory _IPTVCATMODEL.fromJson(Map<String, dynamic> json) =
      _$_IPTVCATMODEL.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get channel;
  @override
  @HiveField(2)
  String get link;
  @override
  @HiveField(3)
  String get country;
  @override
  @HiveField(4)
  String get liveliness;
  @override
  @HiveField(5)
  String get status;
  @override
  @HiveField(6)
  DateTime get lastChecked;
  @override
  @HiveField(7)
  String get format;
  @override
  @HiveField(8)
  String get mbps;
  @override
  @HiveField(9)
  List<String> get uri;
  @override
  @JsonKey(ignore: true)
  _$IPTVCATMODELCopyWith<_IPTVCATMODEL> get copyWith;
}
