import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_application/models/models.dart';

import 'hero_detail_widget.dart';

Widget SuperHeroCell(BuildContext ctx, List<MySuperHero> items, int index) {
  return GestureDetector(
    onTap: () {
      final snackBar = SnackBar(content: Text('Tap'));
      Navigator.push(
          ctx,
          MaterialPageRoute(
              builder: (context) => HeroDetails(superHero: items[index])));
    },
    child: Card(
        margin: EdgeInsets.all(8),
        elevation: 4.0,
        child: Container(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Hero(
                    tag: items[index],
                    child: Image.asset('asset/images/${items[index].img}'),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    items[index].title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.navigate_next, color: Colors.black38),
            ],
          ),
        )),
  );
}
