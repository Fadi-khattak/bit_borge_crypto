import 'package:birborge/utils/app_colors.dart';
import 'package:birborge/utils/styling_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  Color color;
  CustomButton({required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      decoration:  BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.r)
      ),
      child: Center(
        child:Text("Login",style: subheadingStyleBold,)
      ),
    );
  }
}
