import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'local_widgets/avenger_selection.dart';

class Avengers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyAvengerSelection(title: 'New Avengers'),
    );
  }
  
}