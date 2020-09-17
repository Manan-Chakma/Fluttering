import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              Container(
                //color: Colors.white,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                    )),

                child: Row(
                  children: <Widget>[
                    Image.asset('asset/images/user-icon.png'),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 30),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Enter Your Name',
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none),
                        ),
                      ),
                    )
                  ],
                ),
                margin: EdgeInsets.only(left: 50, right: 50, top: 50),
              ),

              // start now button
              Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF1A237E), Color(0xFF3F51B5)],
                          // colors: [Colors.indigo, Colors.indigoAccent],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 200.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Start Now",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                margin: EdgeInsets.only(top: 20),
              ),
              
            ],
          ),
        ),
      ),
    ));
  }

  void startNow() {}
}
