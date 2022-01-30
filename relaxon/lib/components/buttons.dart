import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:relaxon/_colors.dart';

@immutable
class Button extends StatefulWidget {
  final String title;
  final TextStyle textStyle;

  const Button(this.title, this.textStyle, {Key? key}) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        color: CustomColor.white,
      ),
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          //On Click Action WIll be Performed

          log(widget.title);
        },
        child: Center(
          child: Text(
            widget.title,
            style: widget.textStyle,
          ),
        ),
      ),
    );
  }
}
