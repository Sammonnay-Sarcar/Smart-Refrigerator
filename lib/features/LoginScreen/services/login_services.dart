import 'package:cold_storage/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

class LoginServices {
  void signInUser(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, RoundedBottomNavigationBar.routeName, (route) => false);
  }
}
