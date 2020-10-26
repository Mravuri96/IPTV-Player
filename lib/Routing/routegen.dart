import 'package:flutter/material.dart';

import '../main.dart';

class RouteGenerator {
  static Route<dynamic> genRoute(RouteSettings settings) {
    final _uri = settings.name.split('?');

    switch (_uri.first) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const Home(),
          settings: const RouteSettings(name: '/'),
        );
        break;
      case '/watch':
        return MaterialPageRoute(
          builder: (context) => TvPlayer(
            url: _uri[2],
            title: _uri[1],
          ),
          maintainState: false,
          settings: RouteSettings(name: '/${_uri[1]}'),
        );
        break;
      default:
        return MaterialPageRoute(
          builder: (context) => const Home(),
          settings: const RouteSettings(name: '/'),
        );
    }
  }

  // static Route<dynamic> _ErrorRoute() => MaterialPageRoute(
  //       builder: (context) => const Scaffold(
  //         body: Center(
  //           child: Text('Page not found'),
  //         ),
  //       ),
  //     );
}
