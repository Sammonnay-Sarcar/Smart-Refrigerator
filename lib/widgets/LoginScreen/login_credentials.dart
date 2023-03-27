import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class loginCredentials extends StatefulWidget {
  const loginCredentials({Key? key}) : super(key: key);

  @override
  State<loginCredentials> createState() => _loginCredentialsState();
}

Widget buildEmail() {
  return Container(
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: "Email",
      ),
    ),
  );
}

class _loginCredentialsState extends State<loginCredentials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.fromLTRB(33, 182, 11, 407),
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                    height: 50,
                  ),
                  buildEmail(),
                ],
              ),
            )));
  }
}
