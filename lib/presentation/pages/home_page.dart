import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:super_agent_with_flutter/constants/app_styles.dart';
import 'package:super_agent_with_flutter/presentation/pages/deposits_page.dart';
import 'package:super_agent_with_flutter/presentation/pages/withdrawal_page.dart';
import 'package:super_agent_with_flutter/presentation/widgets/home_sections_card.dart';
import 'package:super_agent_with_flutter/presentation/widgets/logout_dialog.dart';
import 'package:super_agent_with_flutter/presentation/widgets/widget_action_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Stack(
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/images/card.png'),
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Jane Doe',
                              style: AppStyles.latoRegular(
                                color: Colors.white,
                                size: 13.0,
                              ),
                            ),
                            Text(
                              '0101010101010101',
                              style: AppStyles.latoRegular(
                                color: Colors.white,
                                size: 13,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Credit',
                              style: AppStyles.latoRegular(
                                color: Colors.white,
                                size: 13,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  '209.72',
                                  style: AppStyles.latoRegular(
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 25, 0, 0),
                                  child: Text(
                                    'NGN',
                                    style: AppStyles.latoRegular(
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 15.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeSectionsCard(
                      title: 'Deposits',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DepositsPage(),
                          ),
                        );
                      },
                      horizontal: 50,
                      vertical: 40,
                      sectionImage: AssetImage('assets/images/deposits.png'),
                    ),
                    HomeSectionsCard(
                      title: 'Withdrawal',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WithdrawalPage(),
                          ),
                        );
                      },
                      horizontal: 40,
                      vertical: 40,
                      sectionImage: AssetImage('assets/images/withdrawals.png'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeSectionsCard(
                      title: 'Transaction History',
                      onTap: () {},
                      horizontal: 20,
                      vertical: 44,
                      sectionImage:
                          AssetImage('assets/images/transactions.png'),
                    ),
                    HomeSectionsCard(
                      title: 'Support',
                      onTap: () {},
                      horizontal: 50,
                      vertical: 40,
                      sectionImage: AssetImage('assets/images/support.png'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20,),
                child: ActionButton(
                  buttonText: 'Log Out',
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => LogoutDialog(),
                    );
                  },
                  buttonColor: Color(0xFF2553CF),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Contact Support',
                  style: AppStyles.latoRegular(
                    color: Colors.black,
                    size: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
