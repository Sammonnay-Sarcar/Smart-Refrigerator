import 'package:flutter/material.dart';
import '../signUpUserRoutes.dart';


class SignUpServices {
  void signUpUser(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, SignUpUser.routeName, (route) => false);
  }
}


