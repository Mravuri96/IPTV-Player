import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:firebase_analytics/firebase_analytics.dart';

final analyticsProvider = Provider((_) => FirebaseAnalytics());
