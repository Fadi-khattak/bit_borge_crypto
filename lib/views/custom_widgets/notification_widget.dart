import 'package:birborge/utils/bitborg_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.sp,
      width: 20.sp,
      child:Stack(
        children: [

          Center(
            child: Icon(BitborgIcons.orangecircle,size: 30.sp,),
          ),

          Positioned(
            top: 20.sp,
            right: 0.sp,
            child: Icon(Icons.circle,color: Colors.orange,size: 10.sp,),
          ),

        ],
      ) ,
    );
  }
}
