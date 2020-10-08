import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'iptvcat_model.freezed.dart';
part 'iptvcat_model.g.dart';

@freezed
abstract class IPTVCATMODEL with _$IPTVCATMODEL {
  @JsonSerializable(explicitToJson: true)
  @HiveType(typeId: 1, adapterName: 'IPTVCATMODELAdapter')
  const factory IPTVCATMODEL({
    @HiveField(0) String id,
    @HiveField(1) String channel,
    @HiveField(2) String link,
    @HiveField(3) String country,
    @HiveField(4) String liveliness,
    @HiveField(5) String status,
    @HiveField(6) DateTime lastChecked,
    @HiveField(7) String format,
    @HiveField(8) String mbps,
    @HiveField(9) List<String> uri,
  }) = _IPTVCATMODEL;

  factory IPTVCATMODEL.fromJson(Map<String, dynamic> json) =>
      _$IPTVCATMODELFromJson(json);
}
