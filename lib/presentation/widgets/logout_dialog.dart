import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:super_agent_with_flutter/constants/app_styles.dart';

class LogoutDialog extends StatefulWidget {
  @override
  _LogoutDialogState createState() => _LogoutDialogState();
}

class _LogoutDialogState extends State<LogoutDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 200,
        width: 280,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Text(
                'Log Out',
                style: AppStyles.latoBold(color: Color(0xFF4F4F4F), size: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'Be sure you remember your \npassword beofore logging out',
                style: AppStyles.latoRegular(
                  color: Color(0xFF4F4F4F),
                  size: 16,
                ),
              ),
            ),
            SizedBox(height: 50,),
            Row(
              children: <Widget>[
                Text(
                  'BACK',
                  style: AppStyles.robotoMedium(
                    color: Color(0xFF153EAE),
                  ),
                ),
                Text(
                  'LOG OUT',
                  style: AppStyles.robotoMedium(
                    color: Color(0xFF153EAE),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
