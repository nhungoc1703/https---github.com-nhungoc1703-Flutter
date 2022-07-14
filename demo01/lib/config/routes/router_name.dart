
import 'package:demo01/config/routes/routes.dart';
import 'package:flutter/material.dart';
import '../../screen/about.dart';
import '../../screen/firstpage.dart';
import '../../screen/guide.dart';
import '../../screen/play_game.dart';
import '../../screen/profile.dart';

class RouterName {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'firstPage':
        return MaterialPageRoute(builder: (context) => const FirstPage());
      case 'playGame':
        return MaterialPageRoute(builder: (context) => const PlayGame());
      case 'guide':
        return MaterialPageRoute(builder: (context) => Guide());
      case 'history':
        return MaterialPageRoute(builder: (context) => const History());
      case 'about':
        return MaterialPageRoute(builder: (context) => const About());
      default:
        return MaterialPageRoute(
          builder: (_) {
            return Scaffold(
              body: Center(
                child: Text('No route define for ${settings.name}'),
              ),
            );
          },
        );
    }
  }
}
