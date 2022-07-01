import 'package:birborge/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MytextField extends StatelessWidget {
  var controller;

  MytextField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.grey,fontSize: 18.sp,),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
                borderSide:const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:const BorderSide(
                width: 0,
                style: BorderStyle.none,
              )
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 2.sp,horizontal: 8.sp),
            filled: true,
            fillColor: bgLight
        ),
      ),
    );
  }
}
