import 'package:cold_storage/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

class homeServices {
  void home(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, RoundedBottomNavigationBar.routeName, (route) => false);
  }
}
