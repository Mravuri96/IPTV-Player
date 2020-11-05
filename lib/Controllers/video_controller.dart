import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:video_player/video_player.dart';

final $_autoDisposeFamily = ChangeNotifierProvider.autoDispose.family;

final videoPlayer =
    $_autoDisposeFamily<VideoPlayerController, String>((ref, url) {
  final _controller = VideoPlayerController.network(
    url.replaceAll('\u0026', '&'),
  )
    ..initialize()
    ..play();

  ref
    ..onDispose(() => _controller
      ..pause()
      ..dispose())
    ..maintainState = false;
  return _controller;
});
