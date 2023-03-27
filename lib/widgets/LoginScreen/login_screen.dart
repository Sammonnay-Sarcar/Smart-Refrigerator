import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter/material.dart';

import './login_bar.dart';
import './login_credentials.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:
          PreferredSize(preferredSize: Size.zero,
          child: login_bar()),
      body: loginCredentials(),
    );
  }
}
