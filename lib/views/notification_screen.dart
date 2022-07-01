
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class NotificationScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification"),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.sp),
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("100 notifications found",style: TextStyle(color: Colors.white54,fontSize: 13.sp),),
              ),
            ),
            Expanded(
              flex: 10,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder:(context,index){
                  return _notifcationItem();
                },
              )
            )
          ],
        ),
      ),


    );
  }
  Widget _notifcationItem()
  {
    return Container(
      height: 95.h,
      margin: EdgeInsets.symmetric(vertical: 5.sp),
      padding: EdgeInsets.all(5.sp),
      decoration:  BoxDecoration(
          color:bgLight,
          borderRadius: BorderRadius.circular(10.r)
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration:const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/btc_notification.png"),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 5.sp,),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex:2,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("20 July, 2021 | 22 July, 2021",
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 13.sp
                            ),),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 10.sp,
                            width: 10.sp,
                            decoration: BoxDecoration(
                                color: mainYellow,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white,width: 1)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Bitcoin's ‘Upgrade for the Ages' Taproot is Here",
                      style: TextStyle(color: Colors.white,fontSize: 16.sp,),),
                  ),
                ),
                Expanded(
                  child: Align(alignment:Alignment.topLeft,child: Text("Click to read",style: TextStyle(color: mainYellow,fontSize: 16.sp),)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
