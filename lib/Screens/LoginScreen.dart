import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../components/Buttons.dart';
import '../components/TextInputField.dart';
import '../utils/Dividers.dart';
import '../utils/ImageStrings.dart';
import '../utils/colors.dart';
import '../utils/constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorStrings.color_F9D3B4,
        body: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Dividers.verticalMargin(40),
                  Image.asset(
                    ImageString.loginLogo,
                    height: getWidth(200),
                    width: getWidth(300),
                  ),
                  Dividers.verticalMargin(10),
                  formField(),
                  Dividers.verticalMargin(40),
                  FlatButton(
                    text: "Submit",
                    width: 200,
                    height: 50,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    borderRadius: borderRadius10,
                    onTap: () {},
                  ),
                  Dividers.verticalMargin(40),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget formField() {
    return Container(
        width: 90.w,
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(20), vertical: getWidth(40)),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: ColorStrings.backgroundColor, borderRadius: borderRadius17),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextInputFields(
              hintText: "Name",
              keyboardType: TextInputType.name,
              textCapitalization: TextCapitalization.words,
              suffixIcon: const Icon(Icons.person, color: Colors.white),
            ),
            Dividers.verticalMargin(20),
            TextInputFields(
              hintText: "Email",
              keyboardType: TextInputType.emailAddress,
              suffixIcon: const Icon(Icons.email, color: Colors.white),
            ),
            Dividers.verticalMargin(20),
            TextInputFields(
              hintText: "Password",
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              maxLines: 1,
              suffixIcon: const Icon(Icons.lock_outline, color: Colors.white),
            )
          ],
        ));
  }
}
