// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../../../constants/global_variables.dart';
import 'package:http/http.dart' as http;
import 'package:cold_storage/models/iotFeeds.dart';
import 'package:knob_widget/knob_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _sliderController = TextEditingController();
  late double _currentSliderValue;
  dynamic random;

  @override
  void initState() {
    super.initState();
    _loadItems().then((randomTest) {
      setState(() {
        random = randomTest ??
            {
              'created_at': '2023-08-18T08:43:28Z',
              'entry_id': 426,
              'field1': 27,
              'field2': 54,
              'field3': 29,
              'field4': 48
            };
      });
    });
    _currentSliderValue = 20;
    int temp = _currentSliderValue.round();
    _sliderController.text = temp.toString();
  }

  Future<Map<String, dynamic>> _loadItems() async {
    http.Response res =
        await http.get(Uri.parse(uri_test), headers: <String, String>{
      'Content-type': 'application/json; charset=utf-8',
    });
    // print(jsonEncode(jsonDecode(res.body)));
    dynamic randomTest =
        iotFeeds.fromJson(jsonEncode(jsonDecode(res.body))).feeds[1];
    // print(randomTest['field1']);
    // print(randomTest['field2']);
    return randomTest;
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    String temparature = random['field1']?.toString() ?? '20';
    var currentSliderValue = double.tryParse(temparature) ?? 27;
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
                            "$temparature°",
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
                        controller: _sliderController ?? ,
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
              ),
            ),
          ),
        ),
        //slider
        // Padding(
        //   padding: const EdgeInsets.all(40.0),
        //   child: NeumorphicSlider(
        //     height: 25,
        //     value: _currentSliderValue as double,
        //     min: 0,
        //     max: 50,
        //     thumb: Neumorphic(
        //       style: NeumorphicStyle(boxShape: NeumorphicBoxShape.circle()),
        //       child: Container(
        //         height: 40,
        //         width: 40,
        //       ),
        //     ),
        //     onChanged: (value) {
        //       setState(() {
        //         _currentSliderValue = value;
        //         int temp = value.round();
        //         _sliderController.text = temp.toString();
        //       });
        //     },
        //     style: SliderStyle(
        //       depth: -4,
        //       borderRadius: BorderRadius.circular(4),
        //       accent: Colors.black,
        //       variant: Color.fromRGBO(0, 123, 214, 100),
        //       // thumbBorder: NeumorphicBorder(
        //       //     // color: Colors.grey[400],
        //       //     width: 1)
        //     ),
        //
        //     // )),
        //   ),
        // ),
        //quick actions
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 50),
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
