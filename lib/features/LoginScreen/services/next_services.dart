import 'package:flutter/material.dart';
import 'package:cold_storage/features/LoginScreen/nextScreen.dart';


class NextServices {
  void NextScreen(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, nextScreen.routeName, (route) => false);
  }
}


