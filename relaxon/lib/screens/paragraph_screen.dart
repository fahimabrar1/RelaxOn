import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:relaxon/components/custom_font.dart';
import 'package:relaxon/global_variables.dart';
import 'package:url_launcher/url_launcher.dart';
import '../_colors.dart';

class ParagraphScreen extends StatelessWidget {
  const ParagraphScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.blue,
      body: Container(
        color: CustomColor.blue,
        child: const SafeArea(
          child: ParagrahPage(),
        ),
      ),
    );
  }
}

class ParagrahPage extends StatefulWidget {
  const ParagrahPage({Key? key}) : super(key: key);

  @override
  _ParagrahPageState createState() => _ParagrahPageState();
}

class _ParagrahPageState extends State<ParagrahPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Card(
                  margin: const EdgeInsets.all(20),
                  color: CustomColor.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                text: urlprohelp,
                                style: CustomFont.googleAbel(
                                    16, CustomColor.blue, FontWeight.normal),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    final url = 'https://www.therapyroute.com/';
                                    await launch(url);
                                  },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          professionalhelp,
                          textAlign: TextAlign.justify,
                          style: CustomFont.googleAbel(
                              16, CustomColor.black, FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
