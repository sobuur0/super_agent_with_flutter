import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_agent_with_flutter/presentation/pages/sign_in_page.dart';

void main() =>
  runApp(MaterialApp(
    title: 'SuperAgent',
    debugShowCheckedModeBanner: false,
    home: new SignInPage(),
  ));
