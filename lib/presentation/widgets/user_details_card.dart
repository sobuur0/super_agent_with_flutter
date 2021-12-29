import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:super_agent_with_flutter/constants/app_styles.dart';

class UserDetailsCard extends StatelessWidget {
  const UserDetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF153EAE),
      child: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/card.png',
            fit: BoxFit.fitWidth,
            width: 600,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Jane Doe',
                      style: AppStyles.latoBold(
                        color: Colors.white,
                        size: 13,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '234561020940832',
                      style: AppStyles.latoBold(
                        color: Colors.white,
                        size: 13,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Credit',
                      style: AppStyles.latoBold(
                        color: Colors.white,
                        size: 13,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          '209.72',
                          style: AppStyles.latoBold(
                              color: Colors.white, size: 30),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(
                            'NGN',
                            style: AppStyles.latoBold(
                              color: Colors.white,
                              size: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
