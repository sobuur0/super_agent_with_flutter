import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_agent_with_flutter/constants/app_styles.dart';
import 'package:super_agent_with_flutter/presentation/widgets/user_details_card.dart';
import 'package:super_agent_with_flutter/presentation/widgets/widget_action_button.dart';

import 'home_page.dart';

class WithdrawalSuccessfulPage extends StatefulWidget {
  const WithdrawalSuccessfulPage({Key? key}) : super(key: key);

  @override
  _WithdrawalSuccessfulPageState createState() => _WithdrawalSuccessfulPageState();
}

class _WithdrawalSuccessfulPageState extends State<WithdrawalSuccessfulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            UserDetailsCard(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              child: Text(
                'Withdrawal\nSuccessful',
                style: AppStyles.latoBold(
                  color: Color(0xFF263746),
                  size: 35.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Transaction went smoothly. You have your cash \nand someone else has their credit. Yippee!',
                style: AppStyles.latoRegular(
                  color: Color(0xFFA9A9A9),
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
                buttonColor: Color(0xFF2553CF),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomePage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
