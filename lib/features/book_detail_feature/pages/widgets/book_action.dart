import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookAction extends StatelessWidget {
  Color backgroundColor;
  BorderRadiusGeometry boarderRadius;
  String text;
  TextStyle? textStyle;

  BookAction(
      {required this.backgroundColor,
      required this.boarderRadius,
      required this.text,
      required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.w,
      height: 48.h,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(borderRadius: boarderRadius)),
        onPressed: () {},
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
