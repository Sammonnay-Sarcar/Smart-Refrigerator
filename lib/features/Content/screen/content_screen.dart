// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:cold_storage/common/widgets/list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({super.key});

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  List<String> contentArray = ["Tomato", "potatoe", "kumro"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          const Text(
            "Select your location",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Container(
            height: 470,
            child: ListView.builder(
              itemCount: contentArray.length,
              itemBuilder: (BuildContext context, int i) {
                return CustomListTile(content: contentArray[i]);
              },
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
      ),
    );
  }
}
