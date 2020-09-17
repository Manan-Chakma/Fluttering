import 'package:flutter/material.dart';
import 'package:test_flutter_application/main.dart';
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
              builder: (_) => StandingsUi(
                    data: 'Hello Standings UI',
                  ));
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
