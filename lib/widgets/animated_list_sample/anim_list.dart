import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'local_widget/anim_list_local_widget.dart';

class MyAnimatedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyList(),
    );
  }
}
