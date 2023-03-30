// ignore_for_file: prefer_const_constructors

import 'package:cold_storage/common/widgets/list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  List<String> locationArray = ["Tomato", "potatoe", "kumro"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Neumorphic(
            style: NeumorphicStyle(
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12))),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tomato",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Icon(FeatherIcons.box)
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Quantity",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text("50 kg")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Arrival Date",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text("31st February")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Expiry Date",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text("31st March")
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Current Temperature
                          Column(
                            children: [
                              Text(
                                "Current\nTemperature",
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "4.20 °C",
                                style: TextStyle(fontSize: 30),
                              )
                            ],
                          ),
                          //Optimal Temperature
                          Column(
                            children: [
                              Text(
                                "Optimal\nTemperature",
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "4.20 °C",
                                style: TextStyle(fontSize: 30),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            height: 225,
            child: ListView.builder(
                itemCount: locationArray.length,
                itemBuilder: (BuildContext Context, int index) {
                  return CustomListTile(content: locationArray[index]);
                }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Neumorphic(
                style: NeumorphicStyle(boxShape: NeumorphicBoxShape.circle()),
                child: Container(
                  height: 80,
                  width: 80,
                  child: Icon(FeatherIcons.edit),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
