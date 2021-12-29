import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:super_agent_with_flutter/constants/app_styles.dart';
import 'package:super_agent_with_flutter/presentation/widgets/widget_action_button.dart';

class DepositSuccessfulPage extends StatefulWidget {
  const DepositSuccessfulPage({Key? key}) : super(key: key);

  @override
  _DepositSuccessfulPageState createState() => _DepositSuccessfulPageState();
}

class _DepositSuccessfulPageState extends State<DepositSuccessfulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              child: Text(
                'Deposit\nSuccessful',
                style: AppStyles.latoBold(
                  color: Color(0xFF263746),
                  size: 35.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Transaction went smoothly. You have your cash \nand someone else has their credit. Yippie!',
                style: AppStyles.latoRegular(
                  color: Color(0xFF26374680),
                  size: 14.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 30.0,
              ),
              child: ActionButton(
                buttonText: 'Back To Home',
                onTap: () {},
                buttonColor: Color(0xFF2553CF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
