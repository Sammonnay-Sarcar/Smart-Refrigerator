import 'package:cold_storage/bottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:smart_refrigerator/bottomNavigationBar.dart';

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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        title: Text('Neumorphic App'),
        centerTitle: true,
        actions: [
          NeumorphicButton(
            child: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Neumorphic(
          style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            depth: 6,
            intensity: 0.7,
            color: Colors.grey[200],
            lightSource: LightSource.topLeft,
          ),
          child: Container(
            width: 200,
            height: 200,
            child: Center(
              child: Text(
                'Hello World!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
