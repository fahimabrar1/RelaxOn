import 'package:beamer/src/beamer.dart';
import 'package:flutter/material.dart';
import 'package:relaxon/components/custom_font.dart';

import '../_colors.dart';
import '../global_variables.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.blue,
      body: Container(
        color: CustomColor.blue,
        child: const SafeArea(
          child: WelcomePage(),
        ),
      ),
    );
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              "Welcome To",
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
            Row(
              children: [
                Expanded(
                  child: Card(
                    margin: const EdgeInsets.all(20),
                    color: CustomColor.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        welcomepassage,
                        textAlign: TextAlign.justify,
                        style: CustomFont.googleAbel(
                            14, CustomColor.black, FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20, bottom: 50),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Container(color: CustomColor.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: TextButton(
                            onPressed: () {
                              context.beamToNamed(homePath);
                            },
                            child: Text(
                              "Continue",
                              style: CustomFont.googleAbel(
                                18,
                                CustomColor.black,
                                FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
