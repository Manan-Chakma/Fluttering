import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'local_widget/herowidget.dart';

class MySuperHeroes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MySuperHeroesPage(title: 'Avengers'),
    );
  }
  
}

