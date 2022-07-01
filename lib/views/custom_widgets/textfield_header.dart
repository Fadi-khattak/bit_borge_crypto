
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class mTextFieldHeader extends StatelessWidget {
  String title;
  mTextFieldHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child:Text(title,style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.bold),)
    );
  }
}
