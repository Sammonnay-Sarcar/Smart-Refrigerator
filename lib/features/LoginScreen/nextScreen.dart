import 'package:cold_storage/features/LoginScreen/services/login_services.dart';
import 'package:cold_storage/login_screen.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../../common/widgets/custom_button.dart';
import '../../common/widgets/custom_textfield.dart';

class nextScreen extends StatefulWidget {
  static const String routeName = '/sign-up/next';

  nextScreen({super.key});

  @override
  State<nextScreen> createState() => _nextScreenState();
}

class _nextScreenState extends State<nextScreen> {
  final TextEditingController _emailController = TextEditingController();

  // final TextEditingController _passwordController = TextEditingController();
  final LoginServices log = LoginServices();

  void login() {
    log.signInUser(context);
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
      ),
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
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
                              hintText: "Full Name"),
                          const SizedBox(
                            height: 8,
                          ),
                          CustomTextfield(
                              textEditingController: _emailController,
                              hintText: "Phone Number"),
                          const SizedBox(height: 8),
                          CustomTextfield(
                              textEditingController: _emailController,
                              hintText: "Address Line 1"),
                          const SizedBox(height: 8),
                          CustomTextfield(
                              textEditingController: _emailController,
                              hintText: "Address Line 2"),
                          const SizedBox(height: 8),
                          CustomTextfield(
                              textEditingController: _emailController,
                              hintText: "Address Line 3"),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomButton(
                              text: "Create Account",
                              backgroundColour: Colors.black,
                              onTap: () => {login()})
                        ])))
          ],
        ),
      ),
    );
  }
}
