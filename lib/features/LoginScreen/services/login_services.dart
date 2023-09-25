import 'package:cold_storage/login_screen.dart';
import 'package:flutter/material.dart';

class LoginServices {
  void signInUser(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, loginScreen.routeName, (route) => false);
  }
}
