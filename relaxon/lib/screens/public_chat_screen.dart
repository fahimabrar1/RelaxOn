import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:relaxon/components/bottom_type_post.dart';
import 'package:relaxon/components/custom_font.dart';
import 'package:relaxon/components/enum_Holder.dart';

import '../_colors.dart';
import '../global_variables.dart';

class PublicChatScreen extends StatelessWidget {
  const PublicChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: Container(
        color: CustomColor.white,
        child: const SafeArea(
          child: PublicChatPage(),
        ),
      ),
    );
  }
}

class PublicChatPage extends StatefulWidget {
  const PublicChatPage({Key? key}) : super(key: key);

  @override
  _PublicChatPageState createState() => _PublicChatPageState();
}

class _PublicChatPageState extends State<PublicChatPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: publicChatPanel,
            ),
          ),
        ),
        BottomTypePost(TypePostType.chat, () {
          setState(() {
            log("Public");
          });
        }),
      ],
    );
  }
}

class PublicChatPanel extends StatelessWidget {
  final String name;
  final String para;
  final Sides side;
  const PublicChatPanel(this.side, this.name, this.para, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget ovel = ClipOval(
      child: Container(
        height: 10,
        width: 10,
        color: CustomColor.black,
      ),
    );
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: (side == Sides.left)
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.end,
              children: [
                (side == Sides.left) ? ovel : Container(),
                Flexible(
                  child: Container(
                    margin: (side == Sides.left)
                        ? const EdgeInsets.only(left: 10)
                        : const EdgeInsets.only(right: 10),
                    decoration: const BoxDecoration(
                      color: CustomColor.black,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        name,
                        style: CustomFont.googleAbel(
                            12, CustomColor.white, FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                (side == Sides.right) ? ovel : Container(),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: CustomColor.blue,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      para,
                      textDirection: (side == Sides.left)
                          ? TextDirection.ltr
                          : TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: CustomFont.googleAbel(
                          12, CustomColor.black, FontWeight.bold),
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
