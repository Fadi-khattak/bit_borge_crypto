import 'package:birborge/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyPasswordField extends StatelessWidget {
 var prefixIcon;
 var suffixIcon;
 var controller;
 bool showpass;
  MyPasswordField({
   required this.prefixIcon,
    required this.suffixIcon,
    required this.controller,
    required this.showpass
});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        obscureText: showpass,
        controller: controller,
        style: TextStyle(color: Colors.grey,fontSize: 18.sp,),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none
                )
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none
              )
            ),
            filled: true,
            fillColor: bgLight,
          contentPadding: EdgeInsets.symmetric(horizontal: 5.sp,vertical: 2.sp),
          prefixIcon: Icon(prefixIcon,color: Colors.white,size: 30.sp,),
          suffixIcon:IconButton(
            icon: Icon(suffixIcon,color: Colors.grey,),
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}
