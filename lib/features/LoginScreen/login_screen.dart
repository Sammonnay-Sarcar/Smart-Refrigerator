import 'package:cold_storage/common/custom_button.dart';
import 'package:cold_storage/common/widgets/custom_textfield.dart';
import 'package:cold_storage/features/LoginScreen/login_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'login_credentials.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final _signinFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: PreferredSize(preferredSize: Size.zero, child: login_bar()),
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NeumorphicText("Welcome",
                      textStyle: NeumorphicTextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 36,
                        fontWeight: FontWeight.w800,
                      ),
                      style: const NeumorphicStyle(
                        depth: 5,
                        color: Colors.black,
                        shadowDarkColor: Colors.grey,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextfield(
                      textEditingController: _emailController,
                      hintText: "Email"),
                  SizedBox(
                    height: 8,
                  ),
                  CustomTextfield(
                      textEditingController: _passwordController,
                      hintText: "Password"),
                  SizedBox(height: 8),
                  CustomButton(
                    text: "Login",
                    backgroundColour: Color.fromRGBO(58, 58, 58, 100),
                    onTap: () => {_signinFormKey.currentState!.validate()},
                  )
                ],
              ),
            )),
      ],
    ));
  }
}
