import 'package:cold_storage/features/LoginScreen/nextScreen.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../../common/widgets/custom_button.dart';
import '../../common/widgets/custom_textfield.dart';
import 'services/next_services.dart';

class SignUpUser extends StatefulWidget {
  static const String routeName = '/sign-up';

  SignUpUser({super.key});

  @override
  State<SignUpUser> createState() => _SignUpUserState();
}

class _SignUpUserState extends State<SignUpUser> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final NextServices nextScreen = NextServices();

  void next() {
    nextScreen.NextScreen(context);
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
                              hintText: "Email"),
                          const SizedBox(
                            height: 8,
                          ),
                          CustomTextfield(
                              textEditingController: _passwordController,
                              hintText: "Password"),
                          const SizedBox(height: 8),
                          CustomTextfield(
                              textEditingController: _passwordController,
                              hintText: "Confirm Password"),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomButton(
                              text: "Next",
                              backgroundColour: Colors.black,
                              onTap: () => {next()})
                        ])))
          ],
        ),
      ),
    );
  }
}
