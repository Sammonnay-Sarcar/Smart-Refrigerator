import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class login_bar extends StatelessWidget {
  const login_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xE8DEDEDE),
      appBar: NeumorphicAppBar(
        title: NeumorphicText(
          'Smart\nFreezer',
          textAlign: TextAlign.left,
          textStyle: NeumorphicTextStyle(
            fontSize: 25,
            fontFamily: 'Poppins',
            height: 1,
          ),
          style: const NeumorphicStyle(
            depth: 5,
            color: Colors.black,
            shadowDarkColor: Colors.grey,
          ),
        ),
      ),
    );
  }
}
