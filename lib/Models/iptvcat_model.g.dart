// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iptvcat_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IPTVCATMODELAdapter extends TypeAdapter<_$_IPTVCATMODEL> {
  @override
  final int typeId = 1;

  @override
  _$_IPTVCATMODEL read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_IPTVCATMODEL(
      id: fields[0] as String,
      channel: fields[1] as String,
      link: fields[2] as String,
      country: fields[3] as String,
      liveliness: fields[4] as String,
      status: fields[5] as String,
      lastChecked: fields[6] as DateTime,
      format: fields[7] as String,
      mbps: fields[8] as String,
      uri: (fields[9] as List)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_IPTVCATMODEL obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.channel)
      ..writeByte(2)
      ..write(obj.link)
      ..writeByte(3)
      ..write(obj.country)
      ..writeByte(4)
      ..write(obj.liveliness)
      ..writeByte(5)
      ..write(obj.status)
      ..writeByte(6)
      ..write(obj.lastChecked)
      ..writeByte(7)
      ..write(obj.format)
      ..writeByte(8)
      ..write(obj.mbps)
      ..writeByte(9)
      ..write(obj.uri);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IPTVCATMODELAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
