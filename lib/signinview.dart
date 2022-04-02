import 'package:flutter/material.dart';
import 'package:flutter_webmatt/signinviewLeft.dart';
import 'package:flutter_webmatt/signinviewRight.dart';

class SigninView extends StatefulWidget {
  const SigninView({Key? key}) : super(key: key);

  @override
  _SigninViewState createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
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
            const SignInPageLeft(),
            if (MediaQuery.of(context).size.width > 900)
              const SignInPageRight(),
          ],
        ),
      ),
      // ),
    );
  }
}
