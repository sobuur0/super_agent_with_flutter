import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DepositsPage extends StatefulWidget {
  @override
  _DepositsPageState createState() => _DepositsPageState();
}

class _DepositsPageState extends State<DepositsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF2451CA),
        leading: Icon(Icons.arrow_back),
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/images/card.png',
              fit: BoxFit.fitWidth,
              width: 600,
            ),
          ],
        ),
      ),
    );
  }
}
