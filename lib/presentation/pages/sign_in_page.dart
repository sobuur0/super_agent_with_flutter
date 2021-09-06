import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class signInPage extends StatefulWidget {
  @override
  _signInPageState createState() => _signInPageState();
}

class _signInPageState extends State<signInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget> [
            Image.asset('assets/images/atlasImage.png'),
            Text('Atlas'),
            Text('Super Agent'),

          ],
        ),
      ),
    );
  }
}
