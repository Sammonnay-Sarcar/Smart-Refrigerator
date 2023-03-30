// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomListTile extends StatelessWidget {
  final String content;
  const CustomListTile({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Neumorphic(
        style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12))),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(FeatherIcons.heart),
              SizedBox(
                width: 10,
              ),
              Text(content,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25)),
            ],
          ),
        ),
      ),
    );
  }
}
