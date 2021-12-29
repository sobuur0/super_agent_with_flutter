import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:super_agent_with_flutter/constants/app_styles.dart';
import 'package:super_agent_with_flutter/presentation/pages/deposit_successful_page.dart';
import 'package:super_agent_with_flutter/presentation/widgets/cancel_deposit_dialog.dart';
import 'package:super_agent_with_flutter/presentation/widgets/user_details_card.dart';
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
        child: SingleChildScrollView(
          physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //TODO: Should turn this to a reusable widget
              UserDetailsCard(),
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
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 15.0),
                child: ActionButton(
                  buttonText: 'Deposit',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DepositSuccessfulPage(),
                      ),
                    );
                  },
                  buttonColor: Color(0xFF4D5F8D),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
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
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: ActionButton(
                  buttonText: 'Cancel Transaction',
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => CancelDepositDialog(),
                    );
                  },
                  buttonColor: Color(0xFF2553CF),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
