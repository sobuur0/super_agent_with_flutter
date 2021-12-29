import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:super_agent_with_flutter/constants/app_styles.dart';
import 'package:super_agent_with_flutter/presentation/pages/deposit_transactions.dart';
import 'package:super_agent_with_flutter/presentation/widgets/widget_action_button.dart';

class DepositsPage extends StatefulWidget {
  @override
  _DepositsPageState createState() => _DepositsPageState();
}

class _DepositsPageState extends State<DepositsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //TODO: should turn this container(USER DETAILS) to a reusable widget
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
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  'Deposit',
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
                    hintText: '0.00',
                    hintStyle: AppStyles.latoRegular(
                      color: Color(0xFF4F4F4F),
                      size: 12,
                    ),
                    prefixIcon: Icon(
                      Icons.price_check,
                      color: Color(0xFF4F4F4F),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
                child: ActionButton(
                  buttonText: 'Deposit',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DepositTransactionsPage(),
                      ),
                    );
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
