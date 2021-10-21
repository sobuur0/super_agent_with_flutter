import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Stack(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/card.png'),
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Jane Doe',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                          ),
                        ),
                        Text(
                          '0101010101010101',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Credit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '209.72',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 15,),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                              child: Text(
                                'GHC',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
