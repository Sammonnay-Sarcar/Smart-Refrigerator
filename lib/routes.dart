import 'package:cold_storage/bottomNavigationBar.dart';
import 'package:cold_storage/features/Add%20Location/screen/Add_Location.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case RoundedBottomNavigationBar.routeName:
      return MaterialPageRoute(
          builder: (_) => RoundedBottomNavigationBar(),
          settings: routeSettings);
    case AddLocation.routeName:
      return MaterialPageRoute(
          builder: (_) => AddLocation(), settings: routeSettings);
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen doesn not exist'),
          ),
        ),
      );
  }
}
