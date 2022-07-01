import 'package:birborge/utils/app_colors.dart';
import 'package:birborge/utils/bitborg_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MytextField extends StatelessWidget {
  var controller;
  var prefixIcon;

  MytextField({required this.controller,required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.grey,fontSize: 18.sp,),
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon,size: 30.sp,color: Colors.white,),
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
