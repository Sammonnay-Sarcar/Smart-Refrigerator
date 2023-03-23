import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:smart_refrigerator/features/Content/screen/content_screen.dart';
import 'package:smart_refrigerator/features/Location/screen/location_screen.dart';

import 'features/Home Screen/screen/home_screen.dart';

class RoundedBottomNavigationBar extends StatefulWidget {
  const RoundedBottomNavigationBar({super.key});

  @override
  State<RoundedBottomNavigationBar> createState() =>
      _RoundedBottomNavigationBarState();
}

class _RoundedBottomNavigationBarState
    extends State<RoundedBottomNavigationBar> {
  int _selectedIndex = 0;
  final List _pages = [
    const HomeScreen(),
    const LocationScreen(),
    const ContentScreen()
  ];
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 100,
        alignment: Alignment.center,
        child: Neumorphic(
          style: NeumorphicStyle(
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(80))),
          child: Container(
            width: 250,
            height: 80,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30.0),
                    right: Radius.circular((300.0)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NeumorphicRadio(
                  style: const NeumorphicRadioStyle(
                      boxShape: NeumorphicBoxShape.circle()),
                  child: IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 2;
                        });
                      },
                      icon: const Icon(FeatherIcons.package)),
                ),
                NeumorphicRadio(
                  style: const NeumorphicRadioStyle(
                      boxShape: NeumorphicBoxShape.circle()),
                  child: IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 0;
                        });
                      },
                      icon: const Icon(FeatherIcons.thermometer)),
                ),
                NeumorphicRadio(
                  style: const NeumorphicRadioStyle(
                      boxShape: NeumorphicBoxShape.circle()),
                  child: IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 1;
                        });
                      },
                      icon: const Icon(FeatherIcons.mapPin)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
