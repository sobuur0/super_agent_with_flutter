import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:super_agent_with_flutter/constants/app_styles.dart';

class NotEnoughCreditDialog extends StatelessWidget {
  const NotEnoughCreditDialog({Key? key}) : super(key: key);

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
                'Not Enough Credit',
                style: AppStyles.latoBold(
                  color: Color(0xFF4F4F4F),
                  size: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'Phone number does not have \nenough credit. Please, check the \namount and try again ',
                style: AppStyles.latoRegular(
                  color: Color(0xFF4F4F4F),
                  size: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(220, 50, 20, 0),
              child: Text(
                'OK',
                style: AppStyles.robotoMedium(
                  color: Color(0xFF153EAE),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
