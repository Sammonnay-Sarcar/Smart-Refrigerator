import 'package:cold_storage/features/Add%20Location/screen/Add_Location.dart';
import 'package:flutter/material.dart';

class AddLocationServices {
  void addLocation(BuildContext context) {
    Navigator.pushNamed(context, AddLocation.routeName);
  }
}
