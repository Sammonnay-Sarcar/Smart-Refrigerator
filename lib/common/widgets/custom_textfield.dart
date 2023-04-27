// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  const CustomTextfield({
    Key? key,
    required this.textEditingController,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(depth: -4, shape: NeumorphicShape.flat),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2),
        child: TextFormField(
          validator: (val) {
            if (val == null || val.isEmpty) {
              return 'Enter your $hintText';
            }
            return null;
          },
          controller: textEditingController,
          decoration: InputDecoration(
            hintText: hintText,
            disabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }
}
