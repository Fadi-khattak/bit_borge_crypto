
import 'package:birborge/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
            ),
          ),
          Expanded(
            child: Container(
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        child: Text(
                      "Back",
                      style: TextStyle(color: mainYellow),
                    )),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 100.r,
                            width: 100.r,
                            child: CircularProgressIndicator(
                              backgroundColor: bgColor,
                              color: mainYellow,
                              strokeWidth: 3.sp,
                              value: 0.5,
                            ),
                          ),
                        ),

                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin:const EdgeInsets.only(right: 10),
                            height: 100.r,
                            width: 100.r,
                            child: Container(
                              margin: EdgeInsets.all(10.sp),
                              decoration:const BoxDecoration(
                                color: mainYellow,
                                shape: BoxShape.circle
                              ),
                              child: Center(child:Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 30.sp,)),
                            )
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
