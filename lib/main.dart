import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: Home(),
  ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/jogging.png'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(
          "Testing",
          style: TextStyle(
            color: Colors.green[100],
            fontFamily: 'Allison',
            letterSpacing: 2.0,
          ),
        ),
      ),
    );
  }
}

