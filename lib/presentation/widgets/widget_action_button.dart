import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:super_agent_with_flutter/constants/app_styles.dart';

class ActionButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  final Color buttonColor;

  ActionButton({
    required this.buttonText,
    required this.onTap,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          buttonText,
          style: AppStyles.latoRegular(
            color: Colors.white,
            size: 14,
          ),
        ),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(301, 50),
          primary: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
