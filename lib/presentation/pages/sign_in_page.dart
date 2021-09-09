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
      bottomSheet: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: Image.asset('assets/images/order_confirmed.png')),
            Expanded(child: Image.asset('assets/images/fast_loading.png')),
            Expanded(child: Image.asset('assets/images/jogging.png')),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Image.asset('assets/images/atlasImage.png'),
            Text(
              'Atlas',
              style: TextStyle(
                color: Color(0xFF263746),
                fontSize: 20,
              ),
            ),
            Text(
              'Super Agent',
              style: TextStyle(
                color: Color(0xFF263746),
              ),
            ),
            SizedBox(
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}
