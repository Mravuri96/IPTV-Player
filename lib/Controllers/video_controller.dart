import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:video_player/video_player.dart';

final videoPlayer =
    Provider.autoDispose.family<VideoPlayerController, String>((ref, url) {
  final _controller = VideoPlayerController.network(
    url.replaceAll('\u0026', '&'),
  )..initialize();

  ref
    ..onDispose(() => _controller
      ..pause()
      ..dispose())
    ..maintainState = false;
  return _controller;
});
