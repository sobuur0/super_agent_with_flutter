import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:super_agent_with_flutter/constants/app_styles.dart';
import 'package:super_agent_with_flutter/presentation/widgets/widget_action_button.dart';

class SetPinPage extends StatefulWidget {
  @override
  _SetPinPageState createState() => _SetPinPageState();
}

class _SetPinPageState extends State<SetPinPage> with TickerProviderStateMixin {
  late bool _passwordVisible;

  late Animation<double> linearAnimation;
  late AnimationController linearAnimationController;
  double animationValue = 0;

  @override
  // ignore: must_call_super
  void initState() {
    _passwordVisible = false;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Image.asset('assets/images/unlock.png'),
            SizedBox(
              height: 30,
            ),
            Text(
              'Set your Security Pin',
              style: AppStyles.latoRegular(
                color: Color(0xFF4F4F4F),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'To properly secure your funds, please set up a \npersonal 4-digit security PIN. \nYou’ll need it for every transaction you’ll make.',
              textAlign: TextAlign.center,
              style: AppStyles.robotoRegular(
                  color: Color.fromRGBO(38, 55, 70, 0.5), size: 14),
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                obscureText: !_passwordVisible,
                maxLength: 4,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Kindly Enter your 4 digit Pin',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xFF4F4F4F),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                    icon: Icon(
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Color(0xFF4F4F4F),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                obscureText: !_passwordVisible,
                maxLength: 4,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Confirm Pin',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xFF4F4F4F),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                    icon: Icon(
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Color(0xFF4F4F4F),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: ActionButton(
                buttonText: 'Set Pin',
                onTap: () {},
                buttonColor: Color(0xFF2553CF),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
