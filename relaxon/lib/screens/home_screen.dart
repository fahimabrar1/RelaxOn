import 'package:flutter/material.dart';
import 'package:relaxon/components/buttons.dart';
import 'package:relaxon/components/custom_font.dart';

import '../_colors.dart';
import '../global_variables.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.blue,
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
            "Home Screen",
            style: CustomFont.googleAbel(
              48,
              CustomColor.white,
              FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                "Diary",
                100,
                100,
                diaryPath,
                CustomFont.googleAbel(
                  24,
                  CustomColor.black,
                  FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Button(
                "Public \nChat",
                100,
                100,
                publicchatPath,
                CustomFont.googleAbel(
                  24,
                  CustomColor.black,
                  FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Button(
            "Professional Help",
            100,
            220,
            paragraphPath,
            CustomFont.googleAbel(
              24,
              CustomColor.black,
              FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
