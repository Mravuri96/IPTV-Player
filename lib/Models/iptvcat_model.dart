import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'iptvcat_model.freezed.dart';
part 'iptvcat_model.g.dart';

@freezed
abstract class IPTVCATMODEL with _$IPTVCATMODEL {
  @JsonSerializable(explicitToJson: true)
  const factory IPTVCATMODEL({
    String id,
    String channel,
    String link,
    String country,
    String liveliness,
    String status,
    DateTime lastChecked,
    String format,
    String mbps,
    List<String> uri,
  }) = _IPTVCATMODEL;

  factory IPTVCATMODEL.fromJson(Map<String, dynamic> json) =>
      _$IPTVCATMODELFromJson(json);
}
