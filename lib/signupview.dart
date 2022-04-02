import 'package:flutter/material.dart';
import 'package:flutter_webmatt/signupviewLeft.dart';
import 'package:flutter_webmatt/signupviewRight.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // body: SingleChildScrollView(
      child: Container(
        height: 640,
        width: 1080,
        margin: EdgeInsets.symmetric(horizontal: 24),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.red.shade800,
        ),
        child: Row(
          children: [
            const SignUpPageLeft(),
            if (MediaQuery.of(context).size.width > 900)
              const SignUpPageRight(),
          ],
        ),
      ),
      // ),
    );
  }
}
