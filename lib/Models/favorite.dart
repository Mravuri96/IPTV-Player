import 'package:hive/hive.dart';

import 'channels.dart';
import 'iptvcat_model.dart';

part 'favorite.g.dart';

@HiveType(typeId: 0)
class Favorite extends HiveObject {
  Favorite({this.iptvCat, this.iptvOrg});

  @HiveField(0)
  IPTVCATMODEL iptvCat;

  @HiveField(1)
  Channels iptvOrg;
}
