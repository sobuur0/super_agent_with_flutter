import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:super_agent_with_flutter/constants/app_styles.dart';

class CancelDepositDialog extends StatefulWidget {
  const CancelDepositDialog({Key? key}) : super(key: key);

  @override
  _CancelDepositDialogState createState() => _CancelDepositDialogState();
}

class _CancelDepositDialogState extends State<CancelDepositDialog> {
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
                'Cancel Deposit',
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
                'Credit will not be transferred.\nYou must return any cash received \nfor this deposit!',
                style: AppStyles.latoRegular(
                  color: Color(0xFF4F4F4F),
                  size: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 40, 25, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'BACK',
                    style: AppStyles.robotoMedium(
                      color: Color(0xFF153EAE),
                    ),
                  ),
                  Text(
                    'CANCEL DEPOSIT',
                    style: AppStyles.robotoMedium(
                      color: Color(0xFF153EAE),
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
