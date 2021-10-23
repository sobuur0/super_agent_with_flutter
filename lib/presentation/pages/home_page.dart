import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:super_agent_with_flutter/constants/app_styles.dart';
import 'package:super_agent_with_flutter/presentation/widgets/logout_dialog.dart';

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
                                    'GHC',
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
                    Card(
                      color: Color(0xFF2553CF),
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 40),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('assets/images/deposits.png'),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Deposits',
                                style: AppStyles.latoRegular(
                                  color: Colors.white,
                                  size: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Color(0xFF2553CF),
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 40),
                          child: Column(
                            children: <Widget>[
                              Image(
                                image:
                                    AssetImage('assets/images/withdrawals.png'),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Withdrawal',
                                style: AppStyles.latoRegular(
                                  color: Colors.white,
                                  size: 13,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
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
                    Card(
                      color: Color(0xFF2553CF),
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 44),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage(
                                    'assets/images/transactions.png'),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Transaction History',
                                style: AppStyles.latoRegular(
                                  color: Colors.white,
                                  size: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Color(0xFF2553CF),
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 40),
                          child: Column(
                            children: <Widget>[
                              Image(
                                image: AssetImage('assets/images/support.png'),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Support',
                                style: AppStyles.latoRegular(
                                  color: Colors.white,
                                  size: 13,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 60,
                ),
                color: Color(0xFF2553CF),
                child: InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => LogoutDialog());
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 120, vertical: 20),
                    child: Text(
                      'Log Out',
                      style: AppStyles.latoRegular(
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
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
