// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'package:cold_storage/models/iotFeeds.dart';
import 'package:cold_storage/common/widgets/list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:http/http.dart' as http;
import '../../../constants/global_variables.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  List<iotFeeds> iotdata = [];
  dynamic random;
  @override
  void initState() {
    super.initState();
    _loadItems().then((randomTest) {
      setState(() {
        random = randomTest;
      });
    });
  }

  Future<Map<String, dynamic>> _loadItems() async {
      http.Response res =
          await http.get(Uri.parse('$uri_test'), headers: <String, String>{
        'Content-type': 'application/json; charset=utf-8',
      });
      print(jsonEncode(jsonDecode(res.body)));
      // for (int i = 0; i <= 0; i++) {
      //   iotdata.add(iotList.fromJson(jsonEncode(jsonDecode(res.body))));
      dynamic randomTest = iotFeeds.fromJson(jsonEncode(jsonDecode(res.body))).feeds[1];
      print(randomTest['field1']);
      print(randomTest['field2']);
      return randomTest;
      // try {
      //   random.forEach((key, value) {
      //     print('$key \t $value');
      //   });
      // } catch (e) {
      //   print("Naa hopaya");
      // }

      // }
      // print(iotdata[0].id);
   
  }

  List<String> locationArray = ["Tomato", "Potatoe", "Pumkin"];
  @override
  Widget build(BuildContext context) {
    String temperature = random['field1'].toString();
    print(temperature);
    // String temperature = "30";
    //iotdata[0].temperature.toString();
    String humidity = random['field2'].toString();
    print(humidity);
    // String humidity = "10";
    //iotdata[0].humidity.toString();
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
                                "$temperature °C",
                                style: TextStyle(fontSize: 28),
                              )
                            ],
                          ),
                          //Optimal Temperature
                          Column(
                            children: [
                              Text(
                                "Current\nHumidity",
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "$humidity %",
                                style: TextStyle(fontSize: 28),
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
