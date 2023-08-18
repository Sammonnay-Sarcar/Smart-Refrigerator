import 'package:cold_storage/features/Content/screen/content_screen.dart';
import 'package:cold_storage/features/Location/screen/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'features/Home Screen/screen/home_screen.dart';

class RoundedBottomNavigationBar extends StatefulWidget {
  static const String routeName = '/home';
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

  final pressedDepth = -10.00;
  final unPressedDepth = 10.00;

  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(index) {
    print("hello world");
    print(index);
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
              onPressed: () => {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return SimpleDialogBox();
                        })
                  },
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
                  value: 2,
                  onChanged: _onItemTapped,
                  style: NeumorphicRadioStyle(
                      selectedDepth: pressedDepth,
                      unselectedDepth: unPressedDepth,
                      boxShape: NeumorphicBoxShape.circle()),
                  child: Container(
                      height: 60,
                      width: 60,
                      // color: Colors.blue,
                      child: const Icon(FeatherIcons.package)),
                ),
                NeumorphicRadio(
                  value: 0,
                  onChanged: _onItemTapped,
                  style: NeumorphicRadioStyle(
                      selectedDepth: pressedDepth,
                      unselectedDepth: unPressedDepth,
                      boxShape: NeumorphicBoxShape.circle()),
                  child: Container(
                      height: 60,
                      width: 60,
                      // color: Colors.blue,
                      child: const Icon(FeatherIcons.thermometer)),
                ),
                NeumorphicRadio(
                  value: 1,
                  onChanged: _onItemTapped,
                  style: NeumorphicRadioStyle(
                      selectedDepth: pressedDepth,
                      unselectedDepth: unPressedDepth,
                      boxShape: NeumorphicBoxShape.circle()),
                  child: Container(
                      height: 60,
                      width: 60,
                      // color: Colors.blue,
                      child: const Icon(FeatherIcons.mapPin)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget SimpleDialogBox() {
  return Dialog(
      child: Padding(
    padding: const EdgeInsets.all(20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 500,
          height: 300,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NeumorphicText(
                        "Smart\nFreezer",
                        textAlign: TextAlign.left,
                        style: const NeumorphicStyle(
                          color: Colors.black,
                        ),
                        textStyle: NeumorphicTextStyle(
                          fontSize: 25,
                          fontFamily: 'Poppins',
                          height: 1,
                        ),
                      ),
                      NeumorphicButton(
                          style: const NeumorphicStyle(
                            color: Colors.white,
                            intensity: 5,
                            depth: 3,
                          ),
                          onPressed: () => {},
                          child: const Icon(
                            Icons.close_outlined,
                            color: Colors.black,
                            size: 35,
                          ))
                    ],
                  ),
                ),
                NeumorphicText("User Info",
                    textAlign: TextAlign.left,
                    style: const NeumorphicStyle(
                      color: Colors.black,
                    ),
                    textStyle: NeumorphicTextStyle(
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      height: 1,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(Icons.account_box, size: 100),
                    ),
                    Text(
                      "User Name\n********891",
                      style: TextStyle(fontSize: 26),
                    ),
                  ],
                ),
                const Center(
                    child: Text(
                  "*******ha@gmail.com",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                )),
              ],
            ),
          ),
        ),
        NeumorphicButton(
            padding: const EdgeInsets.fromLTRB(80, 15, 80, 15),
            style: const NeumorphicStyle(
              boxShape: NeumorphicBoxShape.stadium(),
              color: Colors.grey,
              depth: 3,
              intensity: 5,
              lightSource: LightSource.topLeft,
              shape: NeumorphicShape.concave,
            ),
            onPressed: () => {},
            child: NeumorphicText(
              "Logout",
              style: const NeumorphicStyle(color: Colors.black),
              textStyle: NeumorphicTextStyle(
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ))
      ],
    ),
  ));
}
