import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          height: 0.05.sh,
          margin: const EdgeInsets.symmetric(vertical: 0),
          child: Text(
            "100 News found",
            style: TextStyle(color: Colors.white54, fontSize: 18.sp),
          ),
        )
      ],
    );
  }
}
