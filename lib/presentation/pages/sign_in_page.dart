import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
