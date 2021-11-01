import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:super_agent_with_flutter/constants/app_styles.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
                  // errorText: '*Enter phone number to request credit from.',
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
                  // errorText: '*Receive this much in credit (same as amount of cash received)',
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
                onTap: () {},
                buttonColor: Color(0xFF4D5F8D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
