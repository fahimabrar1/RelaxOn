import 'package:flutter/material.dart';
import 'package:relaxon/_colors.dart';
import 'package:relaxon/components/buttons.dart';
import 'package:relaxon/components/custom_font.dart';

import '../global_variables.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.lightBLue,
      body: Container(
        color: CustomColor.blue,
        child: const SafeArea(
          child: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ButtonFixedWidth signup = ButtonFixedWidth("Sign Up", signupPath,
      CustomFont.googleAbel(18, CustomColor.black, FontWeight.bold));
  ButtonFixedWidth login = ButtonFixedWidth("Login", loginPath,
      CustomFont.googleAbel(18, CustomColor.black, FontWeight.bold));

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 120,
          ),
          Text(
            "Welcome",
            style: CustomFont.googleAbel(
              48,
              CustomColor.white,
              FontWeight.bold,
            ),
          ),
          Text(
            "To",
            style: CustomFont.googleAbel(
              48,
              CustomColor.white,
              FontWeight.bold,
            ),
          ),
          Text(
            "RelaxOn",
            style: CustomFont.googleAbel(
              48,
              CustomColor.white,
              FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          signup,
          const SizedBox(
            height: 10,
          ),
          login,
        ],
      ),
    );
  }
}
