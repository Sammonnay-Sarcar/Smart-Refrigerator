import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class app_bar extends StatelessWidget {
  const app_bar({super.key});

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
        actions: <Widget>[
          NeumorphicButton(
              style: const NeumorphicStyle(
                intensity: 5,
                depth: 3,
                lightSource: LightSource.topLeft,
                shape: NeumorphicShape.flat,
                color: Color(0xE8DEDEDE),
              ),
              onPressed: () {},
              child: const Icon(
                Icons.account_box_rounded,
                size: 45,
              ))
        ],
      ),
    );
  }
}
