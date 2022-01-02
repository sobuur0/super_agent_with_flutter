import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:super_agent_with_flutter/constants/app_styles.dart';
import 'package:super_agent_with_flutter/presentation/widgets/widget_action_button.dart';

class EnterConfirmationCodePage extends StatefulWidget {
  const EnterConfirmationCodePage({Key? key}) : super(key: key);

  @override
  _EnterConfirmationCodePageState createState() =>
      _EnterConfirmationCodePageState();
}

class _EnterConfirmationCodePageState extends State<EnterConfirmationCodePage> {
  late bool _passwordVisible;

  @override
  //ignore: must_call_super
  void initState() => _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Color(0xFF2553CF),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'Enter \nConfirmation Code',
                style: AppStyles.latoBold(
                  color: Color(0xFF263746),
                  size: 35.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Text(
                'Enter code sent in SMS to [receiver’s p. number].',
                style: AppStyles.robotoRegular(
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 40,
              ),
              child: TextFormField(
                validator: (value) {},
                obscureText: !_passwordVisible,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: ActionButton(
                buttonText: 'Withdraw',
                onTap: () {},
                buttonColor: Color(0xFF4D5F8D),
              ),
            )
          ],
        ),
      ),
    );
  }
}
