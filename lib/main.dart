import 'dart:async' show Future, runZonedGuarded;

import 'package:animations/animations.dart'
    show FadeThroughTransition, PageTransitionSwitcher;
import 'package:dartx/dartx.dart';
import 'package:flutter/foundation.dart'
    show
        DiagnosticPropertiesBuilder,
        DiagnosticsProperty,
        Key,
        StringProperty,
        required;

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/route_manager.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart' show Logger;
import 'package:url_launcher/url_launcher.dart' show canLaunch, launch;
import 'package:video_player/video_player.dart'
    show VideoPlayer, VideoPlayerController;

import 'Controllers/catalog_provider.dart' show catalog;
import 'Controllers/geoip.dart' show GetIp;
import 'Controllers/iptv_cat.dart' show countryData;
import 'Controllers/iptv_org.dart' show ipTvOrgCatalog;
import 'Controllers/placeholder_provider.dart' show placeholderImage;
import 'Models/channels.dart' show ChannelsAdapter, CountryAdapter, TvgAdapter;
import 'Models/favorite.dart' show Favorite, FavoriteAdapter;
import 'Models/iptvcat_model.dart' show IPTVCATMODELAdapter;
import 'Theme/theme.dart' show darkTheme;
import 'Util/countires.dart' show countries;
import 'Util/util.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter().whenComplete(
    () async {
      await Firebase.initializeApp();
      Hive
        ..registerAdapter(
          FavoriteAdapter(),
        )
        ..registerAdapter(
          ChannelsAdapter(),
        )
        ..registerAdapter(
          CountryAdapter(),
        )
        ..registerAdapter(
          TvgAdapter(),
        )
        ..registerAdapter(
          IPTVCATMODELAdapter(),
        );
      await Hive.openBox<Favorite>(
        'Favorite',
      );
    },
  ).whenComplete(
    () async => runZonedGuarded(
      () async => runApp(
        const ProviderScope(
          child: Root(),
        ),
      ),
      (err, stk) => Logger().e('$err $stk'),
    ),
  );
}

class Root extends HookWidget {
  const Root({Key key}) : super(key: key);
  static FirebaseAnalytics analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);
  @override
  Widget build(BuildContext context) => FutureBuilder<void>(
        future: Future.sync(() => GetIp().figureOut()),
        builder: (context, __) => GetMaterialApp(
          themeMode: ThemeMode.dark,
          darkTheme: darkTheme,
          title: '📺 IPTV',
          navigatorObservers: <NavigatorObserver>[observer],
          home: const Home(),
        ),
      );
}

class Home extends HookWidget {
  const Home({Key key}) : super(key: key);

  static const _catalogs = [
    FavoriteView(),
    IptvCatChannels(),
    IptvOrgChannels()
  ];

  @override
  Widget build(BuildContext context) {
    final _pageIndex = useProvider(catalog);
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: Scaffold(
        body: PageTransitionSwitcher(
          transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
              FadeThroughTransition(
            secondaryAnimation: secondaryAnimation,
            animation: primaryAnimation,
            child: child,
          ),
          child: _catalogs.elementAt(_pageIndex.state),
        ),
        bottomNavigationBar: const NavigationPanel(
          isMobile: true,
        ),
        floatingActionButton: _fab,
      ),
    );
  }

  FloatingActionButton get _fab => FloatingActionButton.extended(
        backgroundColor: const Color.fromARGB(255, 30, 30, 30),
        label: const Text(
          'Custom url',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        icon: const Icon(
          Icons.edit,
          color: Color(0xffFCCFA8),
        ),
        onPressed: () async => Get.dialog(
          const CustomDialog(),
          useRootNavigator: false,
        ),
      );
}

class CustomDialog extends HookWidget {
  const CustomDialog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _url = useState('https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8');

    return AlertDialog(
      title: const Text('Enter .m3u8 url'),
      content: SizedBox(
        width: MediaQuery.of(context).size.width * .9,
        child: TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.link),
          ),
          initialValue: _url.value,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (newValue) => _url.value = newValue,
          validator: (url) => !url.startsWith('https')
              ? 'url must start with https'
              : !url.endsWith('.m3u8')
                  ? 'url must end with .m3u8'
                  : null,
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () async => Get.back(
            closeOverlays: true,
          ),
          child: const Text(
            'Cancel',
          ),
        ),
        ElevatedButton(
          onPressed: () async {
            Get.back(
              closeOverlays: true,
            );
            return Get.to(
              TvPlayer(
                url: _url.value,
              ),
              preventDuplicates: true,
            );
          },
          child: const Text(
            'Watch',
          ),
        ),
      ],
    );
  }
}

class NavigationPanel extends HookWidget {
  const NavigationPanel({
    @required this.isMobile,
    Key key,
  }) : super(key: key);

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final _index = useProvider(catalog).state;
    return BottomNavigationBar(
      elevation: 16,
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite, color: Colors.red),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(),
          label: 'IPTV-CAT',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(),
          label: 'IPTV-ORG',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bug_report),
          label: 'Bugs',
        ),
      ],
      currentIndex: _index,
      onTap: (index) async {
        if (index == 0) {
          // _index.value = index;
          // await Get.to(const FavoriteView(), preventDuplicates: true);
          context.read(catalog).state = 0;
        } else if (index == 1) {
          // _index.value = index;
          context.read(catalog).state = 1;
        } else if (index == 2) {
          // _index.value = index;

          context.read(catalog).state = 2;
        } else if (index == 3) {
          // _index.value = index;

          const url = 'https://github.com/Mravuri96/IPTV-Player/issues';
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            return Logger().e('Couldnt launch $url');
          }
        }
      },
    );
  }

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
    final _countryList = useProvider(countries)
        .where(
          (element) =>
              element.last.contains(_country.value.toLowerCase()) ||
              element.first.contains(
                _country.value.toLowerCase(),
              ),
        )
        .map(
          (_country) => ElevatedButton(
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
          ),
        )
        .toList();

    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverAppBar(
            backgroundColor: const Color(0xffFCCFA8),
            floating: true,
            snap: true,
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
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            delegate: SliverChildListDelegate(
              _countryList,
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
  Widget build(BuildContext context) {
    final _channel = useState('');

    return useProvider(
      countryData(countryName),
    ).when(
      loading: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (err, _) => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      data: (channels) {
        if (channels == null || channels.isEmpty) {
          return Scaffold(
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
          );
        } else {
          final _channelList = channels.filter(
            (element) => element.channel.toLowerCase().contains(
                  _channel.value.toLowerCase(),
                ),
          );
          return Scaffold(
            appBar: AppBar(
              title: Card(
                color: const Color(0xffFCCFA8),
                child: TextField(
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
                  onChanged: (value) => _channel.value = value,
                  toolbarOptions: const ToolbarOptions(
                    paste: true,
                    selectAll: true,
                    copy: true,
                    cut: true,
                  ),
                ),
              ),
            ),
            bottomNavigationBar: SizedBox(
              height: 52,
              child: GridTileBar(
                title: Text(
                  countryName.toUpperCase(),
                  overflow: TextOverflow.clip,
                ),
                subtitle: Text(
                    'Last Updated: ${channels?.first?.lastChecked?.toString()?.substring(0, 11) ?? ''}'),
              ),
            ),
            body: Center(
              child: GridView.builder(
                primary: true,
                padding: const EdgeInsets.all(16),
                itemCount: _channelList.length,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 400,
                  childAspectRatio: 3 / 1,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final _channel = _channelList.elementAt(index);
                  return ElevatedButton(
                    onPressed: () async => Get.to(
                      TvPlayer(
                        url: _channel.link,
                      ),
                      preventDuplicates: true,
                    ),
                    child: GridTileBar(
                      leading: IconButton(
                        tooltip: 'Add ${_channel.channel} to favorites',
                        icon: const Icon(Icons.favorite, color: Colors.red),
                        onPressed: () async => Hive.box<Favorite>('Favorite')
                            .put(
                              _channel.channel,
                              Favorite(iptvCat: _channel),
                            )
                            .whenComplete(() async => ScaffoldMessenger.of(
                                    context)
                                .showSnackBar(SnackBar(
                                    content: Text(
                                        'Added ${_channel.channel} to Favorites')))),
                      ),
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
          );
        }
      },
    );
  }

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
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (_, index) {
                      final _channel = _channelList.elementAt(index);
                      return ElevatedButton(
                        onPressed: () async => Get.to(
                          TvPlayer(
                            url: _channel.url,
                          ),
                          preventDuplicates: true,
                        ),
                        child: GridTileBar(
                          leading: IconButton(
                            icon: const Icon(Icons.favorite, color: Colors.red),
                            onPressed: () async =>
                                Hive.box<Favorite>('Favorite')
                                    .put(
                                      _channel.url,
                                      Favorite(
                                        iptvOrg: _channel,
                                      ),
                                    )
                                    .whenComplete(
                                      () async => ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Added ${_channel.name} to Favorites',
                                          ),
                                        ),
                                      ),
                                    ),
                          ),
                          trailing: FadeInImage.memoryNetwork(
                            image: _channel?.logo ??
                                'https://via.placeholder.com/100',
                            placeholder: context.read(placeholderImage),
                            width: 100,
                            fit: BoxFit.scaleDown,
                          ),
                          title: Text(
                            _channel.name,
                            style: const TextStyle(color: Colors.black),
                          ),
                          subtitle: Text(
                            '${_channel.country.code.toUpperCase().toFlagEmoji()} ${_channel.country.name.toUpperCase()}',
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
      error: (_, __) => const Center(child: CircularProgressIndicator()),
    );
  }
}

class TvPlayer extends StatefulHookWidget {
  const TvPlayer({@required this.url, Key key}) : super(key: key);

  final String url;

  @override
  _TvPlayerState createState() => _TvPlayerState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('url', url));
  }
}

class _TvPlayerState extends State<TvPlayer> {
  VideoPlayerController _controller;

  @override
  void dispose() {
    _controller
      ..pause()
      ..dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.network(
      // widget.catalog == 0
      // ? widget.url.substring(0, widget.url.length - 22)
      // :
      widget.url.replaceAll('\u0026', '&'),
    )..initialize().then((_) => setState(() {}));
  }

  @override
  Scaffold build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: _controller.value.initialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(
                    _controller,
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircularProgressIndicator(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('If video dosent play after 10 seconds, '),
                        ElevatedButton(
                          onPressed: () async {
                            final url =
                                //  widget.catalog == 0
                                //     ? widget.url
                                //         .substring(0, widget.url.length - 22)
                                //     :
                                widget.url.replaceAll('\u0026', '&');
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              return Logger().e('Couldnt launch $url');
                            }
                          },
                          child: const Text('  Click Here  '),
                        ),
                      ],
                    )
                  ],
                ),
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

class FavoriteView extends HookWidget {
  const FavoriteView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        actions: [
          IconButton(
            tooltip: 'Clear all favorites',
            icon: const Icon(Icons.clear_all),
            onPressed: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text(
                  'Warning',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                content: const Text(
                  'This will remove all channels from favorites.\nThis action is irreversable.',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                actions: <Widget>[
                  RaisedButton(
                    color: Theme.of(context).cardColor,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Cancel',
                    ),
                  ),
                  RaisedButton(
                    color: Theme.of(context).cardColor,
                    onPressed: () async {
                      await Hive.box<Favorite>('Favorite').clear();
                      // await _bannerAd?.dispose();
                      // _bannerAd = null;
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Confirm',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: Hive.box<Favorite>('Favorite').listenable(),
          builder: (context, Box<Favorite> box, _) => box.isEmpty
              ? const Text(
                  'No favorites have been added',
                )
              : CustomScrollView(slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 400,
                        childAspectRatio: 3 / 1,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (_, index) {
                          final _data = box.getAt(index);

                          if (_data.iptvCat != null) {
                            final _channel = _data.iptvCat;
                            return ElevatedButton(
                              onPressed: () async => Get.to(
                                TvPlayer(
                                  url: _channel.link,
                                ),
                                preventDuplicates: true,
                              ),
                              child: GridTileBar(
                                leading: IconButton(
                                  tooltip:
                                      'Remove ${_channel.channel} from Favorites',
                                  icon: const Icon(Icons.delete_forever),
                                  onPressed: () async => box.deleteAt(index),
                                ),
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
                          } else if (_data.iptvOrg != null) {
                            final _channel = _data.iptvOrg;
                            return ElevatedButton(
                              onPressed: () async => Get.to(
                                TvPlayer(
                                  url: _channel.url,
                                ),
                                preventDuplicates: true,
                              ),
                              child: GridTileBar(
                                leading: IconButton(
                                  tooltip:
                                      'Remove ${_channel.name} from favorites',
                                  icon: const Icon(Icons.delete_forever),
                                  onPressed: () async => box.deleteAt(index),
                                ),
                                trailing: FadeInImage.memoryNetwork(
                                  image: _channel?.logo ??
                                      'https://via.placeholder.com/100',
                                  placeholder: context.read(placeholderImage),
                                  width: 100,
                                  fit: BoxFit.scaleDown,
                                ),
                                title: Text(
                                  _channel.name,
                                  style: const TextStyle(color: Colors.black),
                                ),
                                subtitle: Text(
                                  '${_channel.country.code.toUpperCase().toFlagEmoji()} ${_channel.country.name.toUpperCase()}',
                                  maxLines: 2,
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                            );
                          } else {
                            return const SizedBox.shrink();
                          }
                        },
                        childCount: box.length,
                      ),
                    ),
                  ),
                ]),
        ),
      ),
    );
  }
}
