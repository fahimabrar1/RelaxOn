import 'package:flutter/material.dart';
import 'package:relaxon/components/bottom_type_post.dart';
import 'package:relaxon/components/custom_font.dart';
import 'package:relaxon/components/enum_Holder.dart';
import 'package:relaxon/global_variables.dart';

import '../_colors.dart';

class DiaryScreen extends StatelessWidget {
  const DiaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: Container(
        color: CustomColor.white,
        child: const SafeArea(
          child: DiaryPage(),
        ),
      ),
    );
  }
}

class DiaryPage extends StatefulWidget {
  const DiaryPage({Key? key}) : super(key: key);

  @override
  _DiaryPageState createState() => _DiaryPageState();
}

class _DiaryPageState extends State<DiaryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: diaryPanel,
            ),
          ),
        ),
        BottomTypePost(TypePostType.diary, () {
          setState(() {});
        }),
      ],
    );
  }
}

class DiaryPanel extends StatelessWidget {
  final String para;
  final String date;
  const DiaryPanel(
    this.para,
    this.date, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Container(
              decoration: const BoxDecoration(
                color: CustomColor.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  date,
                  style: CustomFont.googleAbel(
                      12, CustomColor.white, FontWeight.w500),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: CustomColor.blue,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      para,
                      textAlign: TextAlign.justify,
                      style: CustomFont.googleAbel(
                          12, CustomColor.white, FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
