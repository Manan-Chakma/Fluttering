import 'package:flutter/material.dart';
import 'package:test_flutter_application/main.dart';
import 'package:test_flutter_application/widgets/animated_list_sample/anim_list.dart';
import 'package:test_flutter_application/widgets/hero_second_sample/use_hero.dart';
import 'package:test_flutter_application/widgets/herosample/herosample.dart';
import 'package:test_flutter_application/widgets/loginui/loginui.dart';
import 'package:test_flutter_application/widgets/standingsui/standings.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => MyHomePage(title: 'Flutter Demo Home Page'));
      case '/standings':
        if (args is String) {
          return MaterialPageRoute(
              builder: (_) => StandingsUi(data: 'Hello Standings UI'));
        }
        return _errorRoute();
      case '/loginui':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => LoginUi());
        }
        return _errorRoute();
      case '/hero_list':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => MySuperHeroes());
        }
        return _errorRoute();
      case '/hero_single':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => Avengers());
        }
        return _errorRoute();
      case '/animated_list':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => MyAnimatedList());
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }
}
