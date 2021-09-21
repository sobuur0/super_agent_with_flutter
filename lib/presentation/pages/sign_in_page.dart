import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_agent_with_flutter/presentation/widgets/widget_action_button.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(),
                Image.asset('assets/images/atlasImage.png'),
                Text(
                  'Atlas',
                  style: TextStyle(
                    color: Color(0xFF263746),
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Super Agent',
                  style: TextStyle(
                    color: Color(0xFF263746),
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xFF4F4F4F),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'xxxxxxxxxx',
                      prefixIcon: Icon(Icons.email, color: Color(0xFF4F4F4F)),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_sharp,
                        color: Color(0xFF4F4F4F),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: ActionButton(
                    textButton: 'Log In',
                    onTap: () {},
                    buttonColor: Color(0xFF2553CF),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 140, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                          child:
                              Image.asset('assets/images/order_confirmed.png')),
                      Expanded(
                          child: Image.asset('assets/images/fast_loading.png')),
                      Expanded(child: Image.asset('assets/images/jogging.png')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
