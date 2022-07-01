
import 'package:birborge/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLoginbtn extends StatelessWidget {
  var ontap;
  String title;
 CustomLoginbtn({required this.title,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 50.sp,
        decoration: BoxDecoration(
          color: mainYellow,
          borderRadius: BorderRadius.circular(5.sp)
        ),
        child: Center(
          child: Text(title,style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
