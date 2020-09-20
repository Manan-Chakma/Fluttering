import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_flutter_application/widgets/loginui/local_widgets/startNowButtonWidget.dart';
import 'package:test_flutter_application/widgets/loginui/local_widgets/textInputWidget.dart';

class LoginUi extends StatelessWidget {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: new BoxDecoration(
        //color: Colors.indigo
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Color(0xFF1A237E), Color(0xFF3F51B5)]),
        // colors: [Colors.indigo, Colors.indigoAccent])
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // hello image
              Image.asset('asset/images/hello.png'),
              // main logo
              Image.asset('asset/images/logo.png'),

              // text input edit text with image
              const TextInputWidget(),

              // button widget
              const StartNowButtonWidget(),
            ],
          ),
        ),
      ),
    ));
  }

  void startNow() {}
}
