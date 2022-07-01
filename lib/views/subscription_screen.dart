import 'package:birborge/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Subscription"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.sp),
        child: ListView(
          children: [
            Image.asset("assets/images/premium-quality.png",width: 126.sp,height: 126.sp,),
            SizedBox(height: 10.sp,),
            Align(
              alignment: Alignment.center,
              child:Text("Unlock Premium Features",style: TextStyle(color: mainYellow,fontSize: 18.sp),),
            ),
            SizedBox(height: 10.sp,),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 256.w,
                child: Text("You can buy any premium subscription and enjoy Unlimited features of the app.",
                style: TextStyle(color: Colors.white54,fontSize: 16.sp,),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 20.sp,),
            _plans("Yearly plan"),
            _plans("6 months"),
            _plans("3 months"),

          ],
        ),
      ),
    );
  }

  Widget _plans(String validity)
  {
    return SizedBox(
      height: 79.h,
      child:Card(
        color: mainYellow,
        child:Column(
          children: [
            Expanded(
              child: Align(
                alignment:Alignment.center,
                child: Text(validity,style: TextStyle(color: Colors.grey,fontSize: 16.sp),),
              ),
            ),
            Expanded(
              child: Align(
                child: Text("\$ 30.00 / Month",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),),
              ),
            )
          ],
        ),
      ) ,
    );
  }
}
