import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'channels.freezed.dart';
part 'channels.g.dart';

@freezed
abstract class Channels with _$Channels {
  const factory Channels({
    String name,
    String logo,
    String url,
    String category,
    List<Country> language,
    Country country,
    Tvg tvg,
  }) = _Channels;

  factory Channels.fromJson(Map<String, dynamic> json) =>
      _$ChannelsFromJson(json);
}

@freezed
abstract class Country with _$Country {
  const factory Country({
    String code,
    String name,
  }) = _Country;
  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}

@freezed
abstract class Tvg with _$Tvg {
  const factory Tvg({
    String id,
    String name,
    String url,
  }) = _Tvg;
  factory Tvg.fromJson(Map<String, dynamic> json) => _$TvgFromJson(json);
}
