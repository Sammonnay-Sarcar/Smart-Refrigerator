import "package:flutter_neumorphic/flutter_neumorphic.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'Neumorphic App',
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        baseColor: Colors.black,
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        title: NeumorphicText(
          'Hello World',
          style: NeumorphicStyle(
            depth: 4,
            color: Colors.white,
          ),
        ),
      ),
      body: NeumorphicText("Test Data"),
    );
  }
}
