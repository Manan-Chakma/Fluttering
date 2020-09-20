import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  const TextInputWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}