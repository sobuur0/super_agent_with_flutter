import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:super_agent_with_flutter/constants/app_styles.dart';
import 'package:super_agent_with_flutter/presentation/widgets/widget_action_button.dart';

class DepositTransactionsPage extends StatefulWidget {
  @override
  _DepositTransactionsPageState createState() =>
      _DepositTransactionsPageState();
}

class _DepositTransactionsPageState extends State<DepositTransactionsPage> {
  late bool _passwordVisible;

  @override
  // ignore: must_call_super
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //TODO: Should turn this to a reusable widget
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
                vertical: 20,
                horizontal: 20,
              ),
              child: Text(
                'Enter your Personal Security PIN code',
                style: AppStyles.latoRegular(
                  color: Color(0xFF4F4F4F),
                  size: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
              child: ActionButton(
                buttonText: 'Deposit',
                onTap: () {},
                buttonColor: Color(0xFF4D5F8D),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                'Transaction Details',
                style: AppStyles.latoBold(
                  color: Color(0xFF4F4F4F),
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Text(
                'Transaction Type',
                style: AppStyles.latoRegular(
                  color: Color(0xFF4F4F4F),
                  size: 16.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
              child: Text(
                'Deposit',
                style: AppStyles.latoBold(
                  color: Color(0xFF4F4F4F),
                  size: 16.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(
                'Name',
                style: AppStyles.latoRegular(
                  color: Color(0xFF4F4F4F),
                  size: 16.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
              child: Text(
                'George Doe',
                style: AppStyles.latoBold(
                  color: Color(0xFF4F4F4F),
                  size: 16.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(
                'Phone.no',
                style: AppStyles.latoRegular(
                  color: Color(0xFF4F4F4F),
                  size: 16.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
              child: Text(
                '+233 989 433 8475',
                style: AppStyles.latoBold(
                  color: Color(0xFF4F4F4F),
                  size: 16.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(
                'Amount',
                style: AppStyles.latoRegular(
                  color: Color(0xFF4F4F4F),
                  size: 16.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
              child: Text(
                  '150.0',
                style: AppStyles.latoBold(
                  color: Color(0xFF4F4F4F),
                  size: 16.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: ActionButton(
                buttonText: 'Cancel Transaction',
                onTap: () {},
                buttonColor: Color(0xFF2553CF),
              ),
            )
          ],
        ),
      ),
    );
  }
}
