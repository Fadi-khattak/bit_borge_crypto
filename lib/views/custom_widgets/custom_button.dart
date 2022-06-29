import 'package:birborge/utils/app_colors.dart';
import 'package:birborge/utils/styling_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  Color color;
  String title;
  var ontap;
  CustomButton({required this.title, required this.color, required this.ontap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 48.h,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.r)),
        child: Center(
            child: Text(
          title,
          style: subheadingStyleBold,
        )),
      ),
    );
  }
}
