import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_application/models/models.dart';
import 'package:test_flutter_application/widgets/herosample/local_widget/hero_detail_widget.dart';

class MyAvengerSelection extends StatefulWidget {
  final String title;

  MyAvengerSelection({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAvengersState();
}

class _MyAvengersState extends State<MyAvengerSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('New Avengers'),
        ),
        body: Container(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                HeroCell(context),
              ],
            ),
          ),
        ));
  }
}

Widget HeroCell(BuildContext ctx) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          ctx,
          MaterialPageRoute(
              builder: (context) => HeroDetails(
                  superHero: new MySuperHero("thor.png", "Thor",
                      "The son of Odin uses his mighty abilities as the God of Thunder to protect his home Asgard and planet Earth alike."))));
    },
    child: Card(
        elevation: 5.0,
        child: Container(
          child: CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('asset/images/thor.png'),
          )
        )),
  );
}
