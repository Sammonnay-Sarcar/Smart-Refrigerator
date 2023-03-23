import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const NeumorphicApp(
      title: 'Neumorphic App',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        baseColor: Color(0xFFE0E5EC),
        accentColor: Color(0xFF9BA7B7),
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      darkTheme: NeumorphicThemeData(
        baseColor: Color(0xFF17181A),
        accentColor: Color(0xFF2E3035),
        lightSource: LightSource.topLeft,
        depth: 6,
      ),
      home: RoundedBottomNavigationBar(),
    );
  }
}
