// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:knob_widget/knob_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _sliderController = TextEditingController();
  late double _currentSliderValue;
  @override
  void initState() {
    super.initState();
    _currentSliderValue = 10;
    int temp = _currentSliderValue.round();
    _sliderController.text = temp.toString();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        //current date time and temp
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Neumorphic(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //date and time
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sun, 1 January",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      Text(
                        "21:34",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  //current temperature
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      //location
                      Row(
                        children: [
                          //icon
                          Icon(
                            FeatherIcons.mapPin,
                            size: 16,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          //location
                          Text(
                            "Entally",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      //current temperature
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          //icon
                          Icon(
                            FeatherIcons.cloud,
                            size: 50,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          //current temperature
                          Text(
                            "22°",
                            style: TextStyle(
                                fontSize: 36, fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        //current temperature
        Neumorphic(
          style: NeumorphicStyle(boxShape: NeumorphicBoxShape.circle()),
          child: SizedBox(
            height: 250,
            width: 250,
            child: Center(
                child: SizedBox(
              width: 140,
              child: Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: TextField(
                      textAlign: TextAlign.end,
                      controller: _sliderController,
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          disabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          isDense: true,
                          contentPadding: EdgeInsets.zero),
                      // textStyle: NeumorphicTextStyle(
                      //     fontSize: 70, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "°C",
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )),
          ),
        ),
        //slider
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: NeumorphicSlider(
            height: 25,
            value: _currentSliderValue,
            min: 0,
            max: 100,
            thumb: Neumorphic(
              style: NeumorphicStyle(boxShape: NeumorphicBoxShape.circle()),
              child: Container(
                height: 40,
                width: 40,
              ),
            ),
            onChanged: (value) {
              setState(() {
                _currentSliderValue = value;
                int temp = value.round();
                _sliderController.text = temp.toString();
              });
            },
            style: SliderStyle(
              depth: -4,
              borderRadius: BorderRadius.circular(4),
              accent: Colors.black,
              variant: Color.fromRGBO(0, 123, 214, 100),
              // thumbBorder: NeumorphicBorder(
              //     // color: Colors.grey[400],
              //     width: 1)
            ),

            // )),
          ),
        ),
        //quick actions
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //edit
              Neumorphic(
                style: NeumorphicStyle(boxShape: NeumorphicBoxShape.circle()),
                child: Container(
                  height: 80,
                  width: 80,
                  child: Icon(FeatherIcons.edit),
                ),
              ),
              Neumorphic(
                style: NeumorphicStyle(boxShape: NeumorphicBoxShape.circle()),
                child: Container(
                  height: 80,
                  width: 80,
                  child: Icon(FeatherIcons.refreshCcw),
                ),
              )
              //reload
            ],
          ),
        )
      ],
    );
  }
}
