import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawerHomeWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Widget'),
      ),
      body: Container(
        child: Center(
          child: Text('Drawer Home Ui'),
        ),
      ),
    );
  }
  
}