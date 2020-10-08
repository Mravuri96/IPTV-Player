// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channels.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChannelsAdapter extends TypeAdapter<_$_Channels> {
  @override
  final int typeId = 2;

  @override
  _$_Channels read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Channels(
      name: fields[0] as String,
      logo: fields[1] as String,
      url: fields[2] as String,
      category: fields[3] as String,
      language: (fields[4] as List)?.cast<Country>(),
      country: fields[5] as Country,
      tvg: fields[6] as Tvg,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Channels obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.logo)
      ..writeByte(2)
      ..write(obj.url)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.language)
      ..writeByte(5)
      ..write(obj.country)
      ..writeByte(6)
      ..write(obj.tvg);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChannelsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CountryAdapter extends TypeAdapter<_$_Country> {
  @override
  final int typeId = 3;

  @override
  _$_Country read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Country(
      code: fields[0] as String,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Country obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TvgAdapter extends TypeAdapter<_$_Tvg> {
  @override
  final int typeId = 4;

  @override
  _$_Tvg read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Tvg(
      id: fields[0] as String,
      name: fields[1] as String,
      url: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Tvg obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TvgAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
