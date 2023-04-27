import 'package:cold_storage/bottomNavigationBar.dart';
import 'package:cold_storage/common/widgets/custom_button.dart';
import 'package:cold_storage/common/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AddLocation extends StatefulWidget {
  const AddLocation({super.key});
  static const String routeName = '/add-location';

  @override
  State<AddLocation> createState() => _AddLocationState();
}

class _AddLocationState extends State<AddLocation> {
  final TextEditingController _stateTextController = TextEditingController();

  final TextEditingController _cityTextController = TextEditingController();

  final TextEditingController _pinCodeTextController = TextEditingController();

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add Location",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      height: 1,
                    ),
                  ),
                  Icon(FeatherIcons.x)
                ],
              ),
            ),
            CustomTextfield(
              textEditingController: _stateTextController,
              hintText: "State",
            ),
            CustomTextfield(
              textEditingController: _cityTextController,
              hintText: "City",
            ),
            CustomTextfield(
              textEditingController: _pinCodeTextController,
              hintText: "Pin Code",
            ),
            CustomButton(
                text: "Add Location",
                backgroundColour: Color.fromRGBO(58, 58, 58, 100),
                onTap: () => {Navigator.pop(context)})
          ],
        ),
      ),
    );
  }
}
