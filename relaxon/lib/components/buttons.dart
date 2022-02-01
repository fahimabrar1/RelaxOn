import 'dart:developer';
import 'package:beamer/src/beamer.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
import 'package:relaxon/_colors.dart';
import 'package:relaxon/components/custom_font.dart';

class ButtonFixedWidth extends StatefulWidget {
  final String title;
  final String path;
  final TextStyle textStyle;

  const ButtonFixedWidth(this.title, this.path, this.textStyle, {Key? key})
      : super(key: key);

  @override
  _ButtonFixedWidthState createState() => _ButtonFixedWidthState();
}

class _ButtonFixedWidthState extends State<ButtonFixedWidth> {
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
          context.beamToNamed(widget.path);
          log(widget.title);
        },
        child: Center(
          child: Text(
            widget.title,
            style: widget.textStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
  // Widget build(BuildContext context) {
  //   return Container(
  //     width: 100,
  //     decoration: const BoxDecoration(
  //       borderRadius: BorderRadius.all(
  //         Radius.circular(5),
  //       ),
  //       color: CustomColor.white,
  //     ),
  //     padding: const EdgeInsets.all(10),
  //     child: InkWell(
  //       onTap: () {
  //         //On Click Action WIll be Performed

  //         log(widget.title);
  //       },
  //       child: Center(
  //         child: Text(
  //           widget.title,
  //           style: widget.textStyle,
  //           textAlign: TextAlign.center,
  //         ),
  //       ),
  //     ),
  //   );
  // }

}

class Button extends StatefulWidget {
  final String title;
  final TextStyle textStyle;
  final double width;
  final double height;
  final String path;
  const Button(this.title, this.height, this.width, this.path, this.textStyle,
      {Key? key})
      : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(color: CustomColor.white),
            ),
          ),
          SizedBox(
            width: widget.width,
            height: widget.height,
            child: TextButton(
              onPressed: () {
                context.beamToNamed(widget.path);
              },
              child: Text(
                widget.title,
                style: widget.textStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
