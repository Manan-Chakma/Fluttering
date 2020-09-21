import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'local_widgets/drawer_home.dart';

class MyDrawerApp extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.amber
      ),
      home: MyDrawerHomePage(),
    );
  }

}