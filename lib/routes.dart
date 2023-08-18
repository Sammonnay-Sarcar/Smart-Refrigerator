import 'package:cold_storage/bottomNavigationBar.dart';
import 'package:cold_storage/features/Add%20Location/screen/Add_Location.dart';
import 'package:cold_storage/features/LoginScreen/nextScreen.dart';
import 'package:cold_storage/features/LoginScreen/signUpUserRoutes.dart';
import 'package:cold_storage/login_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case loginScreen.routeName:
      return MaterialPageRoute(
          builder: (_) => loginScreen(), settings: routeSettings);
    case RoundedBottomNavigationBar.routeName:
      return MaterialPageRoute(
          builder: (_) => RoundedBottomNavigationBar(),
          settings: routeSettings);
    case AddLocation.routeName:
      return MaterialPageRoute(
          builder: (_) => AddLocation(), settings: routeSettings);
    case SignUpUser.routeName:
      return MaterialPageRoute(
          builder: (_) => SignUpUser(), settings: routeSettings);
    case nextScreen.routeName:
      return MaterialPageRoute(
          builder: (_) => nextScreen(), settings: routeSettings);
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist'),
          ),
        ),
      );
  }
}
