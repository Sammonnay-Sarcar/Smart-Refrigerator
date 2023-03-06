import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'widgets/appBar.dart';
import 'widgets/LoginScreen/login_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool userSigned = false;

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      title: 'Smart Refrigerator App',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: const NeumorphicThemeData(
        baseColor: Color(0xFFE0E5EC),
        accentColor: Color(0xFF9BA7B7),
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      darkTheme: const NeumorphicThemeData(
        baseColor: Color(0xFF17181A),
        accentColor: Color(0xFF2E3035),
        lightSource: LightSource.topLeft,
        depth: 6,
      ),
      home: Container(
        child: userSigned  ? const app_bar() : const login_bar(),
      ),
    );
  }
}
