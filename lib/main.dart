import 'dart:async';

import 'package:animations/animations.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/route_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:video_player/video_player.dart';
import 'package:vidflux/vidflux.dart';

import 'Controllers/catalog_provider.dart';
import 'Controllers/geoip.dart';
import 'Controllers/iptv_cat.dart';
import 'Controllers/iptv_org.dart';
import 'Theme/theme.dart';
import 'Util/countires.dart';
import 'Util/util.dart';

Future<void> main() async => runZonedGuarded(
      () => runApp(
        const ProviderScope(
          child: Root(),
        ),
      ),
      (err, stk) => Logger().e('$err $stk'),
    );

class Root extends HookWidget {
  const Root({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => FutureBuilder<void>(
        future: GetIp().figureOut(),
        builder: (context, __) {
          return HookBuilder(
            builder: (_) => useProvider(ipTvCatCatalog).when(
              data: (a) => GetMaterialApp(
                themeMode: ThemeMode.dark,
                darkTheme: dartkTheme,
                title: '📺 IPTV',
                home: const Home(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (err, __) => Text('Error: $err'),
            ),
          );
        },
      );
}

class Home extends HookWidget {
  const Home({Key key}) : super(key: key);

  static const _catalogs = [IptvCatChannels(), IptvOrgChannels()];

  @override
  Widget build(BuildContext context) {
    final _pageIndex = useProvider(catalog);
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: MediaQuery.of(context).size.width > 500
          ? Scaffold(
              body: Row(
                children: <Widget>[
                  const SideBar(
                    isMobile: false,
                  ),
                  Expanded(
                    child: PageTransitionSwitcher(
                      transitionBuilder:
                          (child, primaryAnimation, secondaryAnimation) =>
                              FadeThroughTransition(
                        secondaryAnimation: secondaryAnimation,
                        animation: primaryAnimation,
                        child: child,
                      ),
                      child: _catalogs.elementAt(_pageIndex.state),
                    ),
                  ),
                ],
              ),
            )
          : Scaffold(
              body: PageTransitionSwitcher(
                transitionBuilder:
                    (child, primaryAnimation, secondaryAnimation) =>
                        FadeThroughTransition(
                  secondaryAnimation: secondaryAnimation,
                  animation: primaryAnimation,
                  child: child,
                ),
                child: _catalogs.elementAt(_pageIndex.state),
              ),
              bottomNavigationBar: const SideBar(
                isMobile: true,
              ),
            ),
    );
  }
}

class SideBar extends HookWidget {
  const SideBar({
    @required this.isMobile,
    Key key,
  }) : super(key: key);

  final bool isMobile;

  @override
  Widget build(BuildContext context) => SizedBox.fromSize(
        size: isMobile ? const Size.fromHeight(52) : const Size.fromWidth(72),
        child: Flex(
            direction: isMobile ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () async => context.read(catalog).state = 0,
                  child: RotatedBox(
                    quarterTurns: isMobile ? 0 : 3,
                    child: const Text(
                      'IPTV-CAT',
                      style: TextStyle(
                        color: Color(
                          0xffFCCFA8,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () async => context.read(catalog).state = 1,
                  child: RotatedBox(
                    quarterTurns: isMobile ? 0 : 3,
                    child: const Text(
                      'IPTV-ORG',
                      style: TextStyle(
                        color: Color(
                          0xffFCCFA8,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      DiagnosticsProperty<bool>('isMobile', isMobile),
    );
  }
}

class IptvCatChannels extends HookWidget {
  const IptvCatChannels({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _country = useState('');
    final _countryList = useProvider(countries).filter(
      (element) =>
          element.last.contains(_country.value.toLowerCase()) ||
          element.first.contains(
            _country.value.toLowerCase(),
          ),
    );

    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverAppBar(
            backgroundColor: const Color(0xffFCCFA8),
            floating: true,
            snap: true,
            toolbarHeight: 72,
            title: TextField(
              decoration: const InputDecoration(
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
                focusColor: Colors.grey,
                fillColor: Colors.grey,
                hoverColor: Colors.grey,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
              style: const TextStyle(color: Colors.black),
              cursorColor: Colors.black,
              keyboardType: TextInputType.text,
              onChanged: (value) => _country.value = value,
              autofocus: true,
              toolbarOptions: const ToolbarOptions(
                paste: true,
                selectAll: true,
                copy: true,
                cut: true,
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400,
              childAspectRatio: 3 / 1,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            delegate: SliverChildBuilderDelegate(
              (_, index) {
                final _country = _countryList.elementAt(index);
                return ElevatedButton(
                  onPressed: () async => Get.to<IpTvCatCountryChannelGrid>(
                    IpTvCatCountryChannelGrid(countryName: _country.first),
                    preventDuplicates: true,
                  ),
                  child: GridTileBar(
                    leading: Text(
                      _country.last.toUpperCase().toFlagEmoji(),
                      textScaleFactor: 3,
                    ),
                    title: Text(
                      _country.first.toUpperCase(),
                      maxLines: 2,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                );
              },
              childCount: _countryList.length,
              addAutomaticKeepAlives: false,
              addRepaintBoundaries: false,
            ),
          ),
        ),
      ],
    );
  }
}

class IpTvCatCountryChannelGrid extends HookWidget {
  const IpTvCatCountryChannelGrid({this.countryName, Key key})
      : super(key: key);
  final String countryName;
  @override
  Widget build(BuildContext context) => useProvider(
        countryData(countryName),
      ).when(
        loading: () => const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        error: (err, _) => Scaffold(
          body: Center(
            child: Text('Error: $err'),
          ),
        ),
        data: (channels) => (channels == null || channels.isEmpty)
            ? Scaffold(
                appBar: AppBar(
                  title: Text(
                    countryName.toUpperCase(),
                  ),
                ),
                body: Center(
                  child: Text(
                    'No public channels found for $countryName 😥',
                    textScaleFactor: 2,
                  ),
                ),
              )
            : Scaffold(
                appBar: AppBar(
                  title: ListTile(
                    title: Text(
                      countryName.toUpperCase(),
                    ),
                    subtitle: Text(
                      'Last Updated : ${channels?.first?.lastChecked?.toString()?.substring(0, 11) ?? ''}',
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ),
                body: Center(
                  child: GridView.builder(
                    primary: true,
                    padding: const EdgeInsets.all(16),
                    itemCount: channels.length,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 400,
                      childAspectRatio: 3 / 1,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemBuilder: (context, index) {
                      final _channel = channels.elementAt(index);
                      return ElevatedButton(
                        onPressed: () async => Get.to(
                          TvPlayer(
                            url: _channel.link,
                            catalog: 0,
                          ),
                          preventDuplicates: true,
                        ),
                        child: GridTileBar(
                          title: Text(
                            _channel.channel,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: Colors.black),
                            maxLines: 2,
                          ),
                          subtitle: Text(
                            '${int.parse(
                                  _channel.mbps.removeSuffix(', ...'),
                                ) / 1000} mpbs',
                            style: const TextStyle(color: Colors.black),
                          ),
                          trailing: _channel.format == 'hd'
                              ? const Icon(
                                  Icons.hd,
                                  color: Colors.black,
                                )
                              : const Icon(
                                  Icons.fiber_dvr,
                                  color: Colors.black,
                                ),
                        ),
                      );
                    },
                  ),
                ),
              ),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      StringProperty('countryName', countryName),
    );
  }
}

class IptvOrgChannels extends HookWidget {
  const IptvOrgChannels({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _query = useState('');
    final _channels = useProvider(ipTvOrgCatalog);

    return _channels.when(
      data: (channels) {
        final _channelList = channels.where(
          (element) =>
              element.name.toLowerCase().contains(
                    _query.value.toLowerCase(),
                  ) ||
              element.country.name.toLowerCase().contains(
                    _query.value.toLowerCase(),
                  ) ||
              element.country.code.toLowerCase().contains(
                    _query.value.toLowerCase(),
                  ),
        );
        return Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(16),
                sliver: SliverAppBar(
                  backgroundColor: const Color(0xffFCCFA8),
                  floating: true,
                  snap: true,
                  toolbarHeight: 72,
                  title: TextField(
                    decoration: const InputDecoration(
                      enabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      focusColor: Colors.grey,
                      fillColor: Colors.grey,
                      hoverColor: Colors.grey,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    onChanged: (value) => _query.value = value,
                    toolbarOptions: const ToolbarOptions(
                      paste: true,
                      selectAll: true,
                      copy: true,
                      cut: true,
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(16),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 400,
                    childAspectRatio: 3 / 1,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (_, index) {
                      final _channel = _channelList.elementAt(index);
                      return ElevatedButton(
                        onPressed: () async => Get.to(
                          TvPlayer(
                            url: _channel.url,
                            catalog: 1,
                          ),
                          preventDuplicates: true,
                        ),
                        child: GridTileBar(
                          leading: Text(
                            _channel.country.code.toUpperCase().toFlagEmoji(),
                            textScaleFactor: 2,
                          ),
                          trailing: Image.network(
                            _channel?.logo ?? 'https://via.placeholder.com/100',
                            width: 100,
                            fit: BoxFit.scaleDown,
                          ),
                          title: Text(
                            _channel.name,
                            style: const TextStyle(color: Colors.black),
                          ),
                          subtitle: Text(
                            _channel.country.name.toUpperCase(),
                            maxLines: 2,
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      );
                    },
                    childCount: _channelList.length,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (err, _) => Text(
        '$err',
      ),
    );
  }
}

class TvPlayer extends StatefulHookWidget {
  const TvPlayer({@required this.url, @required this.catalog, Key key})
      : super(key: key);

  final int catalog;
  final String url;
  @override
  _VideoPlayerState createState() => _VideoPlayerState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(IntProperty('catalog', catalog))
      ..add(StringProperty('url', url));
  }
}

class _VideoPlayerState extends State<TvPlayer> {
  static VideoPlayerController _controller;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      widget.catalog == 0
          ? widget.url.substring(0, widget.url.length - 22)
          : widget.url,
    )..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: _controller.value.initialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VidFlux(
                  videoPlayerController: _controller,
                  autoPlay: true,
                ),
              )
            : const SizedBox(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _controller.value.isPlaying
            ? _controller.pause()
            : _controller.play()),
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
