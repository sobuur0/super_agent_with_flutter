import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(
          "Testing",
          style: TextStyle(color: Colors.green[100],
          fontFamily: 'Allison',
          ),
        ),
      ),
    )
  ));
