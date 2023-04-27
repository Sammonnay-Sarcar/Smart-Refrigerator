import 'package:cold_storage/common/widgets/custom_button.dart';
import 'package:cold_storage/common/widgets/custom_textfield.dart';
import 'package:cold_storage/features/LoginScreen/login_bar.dart';
import 'package:cold_storage/features/LoginScreen/services/login_services.dart';
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
  final LoginServices loginServices = LoginServices();
  void signInUser() {
    loginServices.signInUser(context);
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
          // actions: <Widget>[
          //   NeumorphicButton(
          //       style: const NeumorphicStyle(
          //         intensity: 5,
          //         depth: 3,
          //         lightSource: LightSource.topLeft,
          //         shape: NeumorphicShape.flat,
          //         color: Color(0xE8DEDEDE),
          //       ),
          //       onPressed: () => {
          //             showDialog(
          //                 context: context,
          //                 builder: (context) {
          //                   return SimpleDialogBox();
          //                 })
          //           },
          //       child: const Icon(
          //         Icons.account_box_rounded,
          //         size: 45,
          //       ))
          // ],
        ),
        // appBar: PreferredSize(preferredSize: Size.zero, child: login_bar()),
        body: Form(
          key: _signinFormKey,
          child: Column(
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
                          onTap: () => {
                            if (_signinFormKey.currentState!.validate())
                              {signInUser()}
                          },
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}
