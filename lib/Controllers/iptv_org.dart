import 'dart:convert' show json;

import 'package:dartx/dartx.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../Models/channels.dart';

final $_autoDispose = FutureProvider.autoDispose;

final ipTvOrgCatalog = $_autoDispose<List<Channels>>(
  (ref) async => rootBundle
      .loadString('assets/channels.json')
      .then(
        (value) => List<Channels>.from(
          json.decode(value).map(
                (x) => Channels.fromJson(
                  x,
                ),
              ),
        )
            .filter((element) => element.url.contains('.m3u8'))
            .toHashSet()
            .toList()
              ..mergeSort(comparator: (a, b) => a.name.compareTo(b.name)),
      )
      .whenComplete(() => ref.maintainState = true),
);
