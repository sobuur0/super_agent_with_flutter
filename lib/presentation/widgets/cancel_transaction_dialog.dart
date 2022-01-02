import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:super_agent_with_flutter/constants/app_styles.dart';

class CancelTransactionDialog extends StatelessWidget {
  final String title;
  final String dialogDesc;
  final String cancelText;

  CancelTransactionDialog({
    required this.title,
    required this.dialogDesc,
    required this.cancelText,
  });

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
                title,
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
                dialogDesc,
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
                    cancelText,
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
