import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_application/models/models.dart';
import 'package:test_flutter_application/widgets/herosample/local_widget/super_hero_cell.dart';


class MySuperHeroesPage extends StatefulWidget {
  final String title;

  MySuperHeroesPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyHeroState();
}

class _MyHeroState extends State<MySuperHeroesPage> {
  List<MySuperHero> mHeroes = new List<MySuperHero>();

  _MyHeroState() {
    mHeroes.add(new MySuperHero("iron_man.png", "Iron Man",
        "Genius. Billionaire. Playboy. Philanthropist. Tony Stark's confidence is only matched by his high-flying abilities as the hero called Iron Man."));
    mHeroes.add(new MySuperHero("captain_america.png", "Captain America",
        "Recipient of the Super-Soldier serum, World War II hero Steve Rogers fights for American ideals as one of the world’s mightiest heroes and the leader of the Avengers."));
    mHeroes.add(new MySuperHero("thor.png", "Thor",
        "The son of Odin uses his mighty abilities as the God of Thunder to protect his home Asgard and planet Earth alike."));
    mHeroes.add(new MySuperHero("hulk.png", "Hulk",
        "Dr. Bruce Banner lives a life caught between the soft-spoken scientist he’s always been and the uncontrollable green monster powered by his rage."));
    mHeroes.add(new MySuperHero("black_widow.png", "Black Widow",
        "Despite super spy Natasha Romanoff’s checkered past, she’s become one of S.H.I.E.L.D.’s most deadly assassins and a frequent member of the Avengers."));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            ListView.builder(
                itemCount: mHeroes.length,
                itemBuilder: (context, index) => SuperHeroCell(context, mHeroes, index),
            )
          ],
        ),
      ),
    );
  }
}

