import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:smart_refrigerator/features/Content/screen/content_screen.dart';
import 'package:smart_refrigerator/features/Home%20Screen/screen/home_screen.dart';
import 'package:smart_refrigerator/features/Location/screen/location_screen.dart';

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
