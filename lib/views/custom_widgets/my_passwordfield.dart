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
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            filled: true,
            fillColor: Colors.white.withOpacity(0.1,),
          prefixIcon: Icon(prefixIcon,),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
