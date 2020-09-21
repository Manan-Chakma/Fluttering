import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawerSettingsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings Widget'
        ),
      ),
      body: Container(
        child: Center(
          child: Text('Drawer Settings UI'),
        ),
      ),
    );
  }

}