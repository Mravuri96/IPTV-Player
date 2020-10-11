import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'channels.freezed.dart';
part 'channels.g.dart';

@freezed
abstract class Channels with _$Channels {
  @HiveType(typeId: 2, adapterName: 'ChannelsAdapter')
  const factory Channels({
    @HiveField(0) String name,
    @HiveField(1) String logo,
    @HiveField(2) String url,
    @HiveField(3) String category,
    @HiveField(4) List<Country> language,
    @HiveField(5) Country country,
    @HiveField(6) Tvg tvg,
  }) = _Channels;

  factory Channels.fromJson(Map<String, dynamic> json) =>
      _$ChannelsFromJson(json);
}

@freezed
abstract class Country with _$Country {
  @HiveType(typeId: 3, adapterName: 'CountryAdapter')
  const factory Country({
    @HiveField(0) String code,
    @HiveField(1) String name,
  }) = _Country;
  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}

@freezed
abstract class Tvg with _$Tvg {
  @HiveType(typeId: 4, adapterName: 'TvgAdapter')
  const factory Tvg({
    @HiveField(0) String id,
    @HiveField(1) String name,
    @HiveField(2) String url,
  }) = _Tvg;
  factory Tvg.fromJson(Map<String, dynamic> json) => _$TvgFromJson(json);
}
