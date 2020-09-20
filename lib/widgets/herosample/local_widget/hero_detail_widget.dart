import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_application/models/models.dart';

class HeroDetails extends StatefulWidget {
  final MySuperHero superHero;

  HeroDetails({Key key, this.superHero}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyDetailPageState(superHero);
}

class _MyDetailPageState extends State<HeroDetails> {
  MySuperHero superHero;

  _MyDetailPageState(MySuperHero superHero) {
    this.superHero = superHero;
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(superHero.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Hero(
            transitionOnUserGestures: true,
            tag: superHero,
            child: Transform.scale(
              scale: 2.0,
              child: Image.asset('asset/images/${superHero.img}'),
            ),
          ),
          Card(
              elevation: 8,
              margin: EdgeInsets.all(16),
              child: Container(
                padding: EdgeInsets.all(16),
                child: Text(superHero.body),
              )),
        ],
      )),
    );
  }
}
