import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_agent_with_flutter/constants/app_styles.dart';
import 'package:super_agent_with_flutter/presentation/widgets/user_details_card.dart';
import 'package:super_agent_with_flutter/presentation/widgets/widget_action_button.dart';

class WithdrawalPage extends StatefulWidget {
  const WithdrawalPage({Key? key}) : super(key: key);

  @override
  _WithdrawalPageState createState() => _WithdrawalPageState();
}

class _WithdrawalPageState extends State<WithdrawalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              UserDetailsCard(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  'Withdrawal',
                  style: AppStyles.latoBold(
                    color: Color(0xFF4F4F4F),
                    size: 25,
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
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    // errorText: '*Kindly Enter a Valid Number',
                    hintText: 'Phone no.',
                    hintStyle: AppStyles.latoRegular(
                      color: Color(0xFF4F4F4F),
                      size: 12,
                    ),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Color(0xFF4F4F4F),
                    ),
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
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    // errorText: '*Amount is higher than your credit!',
                    hintText: '210.00',
                    hintStyle: AppStyles.latoRegular(
                      color: Color(0xFF4F4F4F),
                      size: 12,
                    ),
                    prefixIcon: Icon(
                      Icons.money,
                      color: Color(0xFF4F4F4F),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
                child: ActionButton(
                  buttonText: 'Withdraw',
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => DepositTransactionsPage(),
                    //   ),
                    // );
                  },
                  buttonColor: Color(0xFF4D5F8D),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
