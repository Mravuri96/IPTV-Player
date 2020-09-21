// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'channels.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Channels _$ChannelsFromJson(Map<String, dynamic> json) {
  return _Channels.fromJson(json);
}

/// @nodoc
class _$ChannelsTearOff {
  const _$ChannelsTearOff();

// ignore: unused_element
  _Channels call(
      {String name,
      String logo,
      String url,
      String category,
      List<Country> language,
      Country country,
      Tvg tvg}) {
    return _Channels(
      name: name,
      logo: logo,
      url: url,
      category: category,
      language: language,
      country: country,
      tvg: tvg,
    );
  }

// ignore: unused_element
  Channels fromJson(Map<String, Object> json) {
    return Channels.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Channels = _$ChannelsTearOff();

/// @nodoc
mixin _$Channels {
  String get name;
  String get logo;
  String get url;
  String get category;
  List<Country> get language;
  Country get country;
  Tvg get tvg;

  Map<String, dynamic> toJson();
  $ChannelsCopyWith<Channels> get copyWith;
}

/// @nodoc
abstract class $ChannelsCopyWith<$Res> {
  factory $ChannelsCopyWith(Channels value, $Res Function(Channels) then) =
      _$ChannelsCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String logo,
      String url,
      String category,
      List<Country> language,
      Country country,
      Tvg tvg});

  $CountryCopyWith<$Res> get country;
  $TvgCopyWith<$Res> get tvg;
}

/// @nodoc
class _$ChannelsCopyWithImpl<$Res> implements $ChannelsCopyWith<$Res> {
  _$ChannelsCopyWithImpl(this._value, this._then);

  final Channels _value;
  // ignore: unused_field
  final $Res Function(Channels) _then;

  @override
  $Res call({
    Object name = freezed,
    Object logo = freezed,
    Object url = freezed,
    Object category = freezed,
    Object language = freezed,
    Object country = freezed,
    Object tvg = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      logo: logo == freezed ? _value.logo : logo as String,
      url: url == freezed ? _value.url : url as String,
      category: category == freezed ? _value.category : category as String,
      language:
          language == freezed ? _value.language : language as List<Country>,
      country: country == freezed ? _value.country : country as Country,
      tvg: tvg == freezed ? _value.tvg : tvg as Tvg,
    ));
  }

  @override
  $CountryCopyWith<$Res> get country {
    if (_value.country == null) {
      return null;
    }
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value));
    });
  }

  @override
  $TvgCopyWith<$Res> get tvg {
    if (_value.tvg == null) {
      return null;
    }
    return $TvgCopyWith<$Res>(_value.tvg, (value) {
      return _then(_value.copyWith(tvg: value));
    });
  }
}

/// @nodoc
abstract class _$ChannelsCopyWith<$Res> implements $ChannelsCopyWith<$Res> {
  factory _$ChannelsCopyWith(_Channels value, $Res Function(_Channels) then) =
      __$ChannelsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String logo,
      String url,
      String category,
      List<Country> language,
      Country country,
      Tvg tvg});

  @override
  $CountryCopyWith<$Res> get country;
  @override
  $TvgCopyWith<$Res> get tvg;
}

/// @nodoc
class __$ChannelsCopyWithImpl<$Res> extends _$ChannelsCopyWithImpl<$Res>
    implements _$ChannelsCopyWith<$Res> {
  __$ChannelsCopyWithImpl(_Channels _value, $Res Function(_Channels) _then)
      : super(_value, (v) => _then(v as _Channels));

  @override
  _Channels get _value => super._value as _Channels;

  @override
  $Res call({
    Object name = freezed,
    Object logo = freezed,
    Object url = freezed,
    Object category = freezed,
    Object language = freezed,
    Object country = freezed,
    Object tvg = freezed,
  }) {
    return _then(_Channels(
      name: name == freezed ? _value.name : name as String,
      logo: logo == freezed ? _value.logo : logo as String,
      url: url == freezed ? _value.url : url as String,
      category: category == freezed ? _value.category : category as String,
      language:
          language == freezed ? _value.language : language as List<Country>,
      country: country == freezed ? _value.country : country as Country,
      tvg: tvg == freezed ? _value.tvg : tvg as Tvg,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Channels implements _Channels {
  const _$_Channels(
      {this.name,
      this.logo,
      this.url,
      this.category,
      this.language,
      this.country,
      this.tvg});

  factory _$_Channels.fromJson(Map<String, dynamic> json) =>
      _$_$_ChannelsFromJson(json);

  @override
  final String name;
  @override
  final String logo;
  @override
  final String url;
  @override
  final String category;
  @override
  final List<Country> language;
  @override
  final Country country;
  @override
  final Tvg tvg;

  @override
  String toString() {
    return 'Channels(name: $name, logo: $logo, url: $url, category: $category, language: $language, country: $country, tvg: $tvg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Channels &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.tvg, tvg) ||
                const DeepCollectionEquality().equals(other.tvg, tvg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(tvg);

  @override
  _$ChannelsCopyWith<_Channels> get copyWith =>
      __$ChannelsCopyWithImpl<_Channels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChannelsToJson(this);
  }
}

abstract class _Channels implements Channels {
  const factory _Channels(
      {String name,
      String logo,
      String url,
      String category,
      List<Country> language,
      Country country,
      Tvg tvg}) = _$_Channels;

  factory _Channels.fromJson(Map<String, dynamic> json) = _$_Channels.fromJson;

  @override
  String get name;
  @override
  String get logo;
  @override
  String get url;
  @override
  String get category;
  @override
  List<Country> get language;
  @override
  Country get country;
  @override
  Tvg get tvg;
  @override
  _$ChannelsCopyWith<_Channels> get copyWith;
}

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
class _$CountryTearOff {
  const _$CountryTearOff();

// ignore: unused_element
  _Country call({String code, String name}) {
    return _Country(
      code: code,
      name: name,
    );
  }

// ignore: unused_element
  Country fromJson(Map<String, Object> json) {
    return Country.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Country = _$CountryTearOff();

/// @nodoc
mixin _$Country {
  String get code;
  String get name;

  Map<String, dynamic> toJson();
  $CountryCopyWith<Country> get copyWith;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res>;
  $Res call({String code, String name});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  final Country _value;
  // ignore: unused_field
  final $Res Function(Country) _then;

  @override
  $Res call({
    Object code = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed ? _value.code : code as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) then) =
      __$CountryCopyWithImpl<$Res>;
  @override
  $Res call({String code, String name});
}

/// @nodoc
class __$CountryCopyWithImpl<$Res> extends _$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(_Country _value, $Res Function(_Country) _then)
      : super(_value, (v) => _then(v as _Country));

  @override
  _Country get _value => super._value as _Country;

  @override
  $Res call({
    Object code = freezed,
    Object name = freezed,
  }) {
    return _then(_Country(
      code: code == freezed ? _value.code : code as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Country implements _Country {
  const _$_Country({this.code, this.name});

  factory _$_Country.fromJson(Map<String, dynamic> json) =>
      _$_$_CountryFromJson(json);

  @override
  final String code;
  @override
  final String name;

  @override
  String toString() {
    return 'Country(code: $code, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Country &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$CountryCopyWith<_Country> get copyWith =>
      __$CountryCopyWithImpl<_Country>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountryToJson(this);
  }
}

abstract class _Country implements Country {
  const factory _Country({String code, String name}) = _$_Country;

  factory _Country.fromJson(Map<String, dynamic> json) = _$_Country.fromJson;

  @override
  String get code;
  @override
  String get name;
  @override
  _$CountryCopyWith<_Country> get copyWith;
}

Tvg _$TvgFromJson(Map<String, dynamic> json) {
  return _Tvg.fromJson(json);
}

/// @nodoc
class _$TvgTearOff {
  const _$TvgTearOff();

// ignore: unused_element
  _Tvg call({String id, String name, String url}) {
    return _Tvg(
      id: id,
      name: name,
      url: url,
    );
  }

// ignore: unused_element
  Tvg fromJson(Map<String, Object> json) {
    return Tvg.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Tvg = _$TvgTearOff();

/// @nodoc
mixin _$Tvg {
  String get id;
  String get name;
  String get url;

  Map<String, dynamic> toJson();
  $TvgCopyWith<Tvg> get copyWith;
}

/// @nodoc
abstract class $TvgCopyWith<$Res> {
  factory $TvgCopyWith(Tvg value, $Res Function(Tvg) then) =
      _$TvgCopyWithImpl<$Res>;
  $Res call({String id, String name, String url});
}

/// @nodoc
class _$TvgCopyWithImpl<$Res> implements $TvgCopyWith<$Res> {
  _$TvgCopyWithImpl(this._value, this._then);

  final Tvg _value;
  // ignore: unused_field
  final $Res Function(Tvg) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
abstract class _$TvgCopyWith<$Res> implements $TvgCopyWith<$Res> {
  factory _$TvgCopyWith(_Tvg value, $Res Function(_Tvg) then) =
      __$TvgCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String url});
}

/// @nodoc
class __$TvgCopyWithImpl<$Res> extends _$TvgCopyWithImpl<$Res>
    implements _$TvgCopyWith<$Res> {
  __$TvgCopyWithImpl(_Tvg _value, $Res Function(_Tvg) _then)
      : super(_value, (v) => _then(v as _Tvg));

  @override
  _Tvg get _value => super._value as _Tvg;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object url = freezed,
  }) {
    return _then(_Tvg(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Tvg implements _Tvg {
  const _$_Tvg({this.id, this.name, this.url});

  factory _$_Tvg.fromJson(Map<String, dynamic> json) => _$_$_TvgFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'Tvg(id: $id, name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tvg &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url);

  @override
  _$TvgCopyWith<_Tvg> get copyWith =>
      __$TvgCopyWithImpl<_Tvg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TvgToJson(this);
  }
}

abstract class _Tvg implements Tvg {
  const factory _Tvg({String id, String name, String url}) = _$_Tvg;

  factory _Tvg.fromJson(Map<String, dynamic> json) = _$_Tvg.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get url;
  @override
  _$TvgCopyWith<_Tvg> get copyWith;
}
