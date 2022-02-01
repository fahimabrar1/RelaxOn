import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:relaxon/components/enum_Holder.dart';
import 'package:relaxon/screens/diary_screen.dart';
import 'package:relaxon/screens/public_chat_screen.dart';
import 'package:intl/intl.dart';

import '../_colors.dart';
import '../global_variables.dart';

class BottomTypePost extends StatefulWidget {
  final TypePostType typepost;
  VoidCallback callBack;
  BottomTypePost(this.typepost, this.callBack, {Key? key}) : super(key: key);

  @override
  _BottomTypePostState createState() => _BottomTypePostState();
}

class _BottomTypePostState extends State<BottomTypePost> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.blue,
      height: 60,
      child: Form(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: CustomColor.white,
                ),
                margin: const EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10, top: 8, bottom: 8),
                  child: TextFormField(
                    controller: controller,
                    decoration: const InputDecoration(border: InputBorder.none),
                  ),
                ),
              ),
            ),
            Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
              child: ClipOval(
                  child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      color: CustomColor.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      String formattedDate =
                          DateFormat('dd-MM-yyyy').format(DateTime.now());

                      if (controller.text.isNotEmpty) {
                        log(formattedDate);
                        if (widget.typepost == TypePostType.chat) {
                          publicChatPanel.add(
                            PublicChatPanel(
                                Sides.right, username, controller.text),
                          );
                        } else if (widget.typepost == TypePostType.diary) {
                          diaryPanel
                              .add(DiaryPanel(controller.text, formattedDate));
                        }
                        widget.callBack();
                        controller.text = "";
                      }
                    },
                    icon: const Icon(
                      Icons.send,
                      size: 16,
                    ),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
