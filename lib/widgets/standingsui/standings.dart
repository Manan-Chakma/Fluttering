import 'package:flutter/material.dart';

class StandingsUi extends StatelessWidget {
  final String data;

  StandingsUi({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Standings UI'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(data),
          ],
        ),
      ),
    );
  }
}
