import 'dart:async';


import 'package:birborge/views/login_screen.dart';
import 'package:birborge/views/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controllers/splash_cubit/splash_controller_cubit.dart';

class SplashScreen extends StatefulWidget {


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState()
  {
    super.initState();
    Future.delayed(const Duration(milliseconds:1000 ),(){
      context.read<SplashControllerCubit>().startSplash(true);
      Timer(const Duration(seconds: 4), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> OnBoarding()));
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SplashControllerCubit, bool>(
  builder: (context, start) {
    return Stack(
        children: [
          AnimatedPositioned(
              top:0.5.sh,
              left: start ? 0.22.sw :-200,
              duration:const Duration(milliseconds: 500),
              child: Image.asset("assets/images/logo1.png",width: 79.91.w,height: 60.66.h,fit: BoxFit.fill,)
          ),
          AnimatedPositioned(
            top:0.51.sh,
            right: start ? 0.22.sw :-200,


            duration:const Duration(milliseconds: 500),
            child: Image.asset("assets/images/logo2.png",width: 114.18.w,height: 29.18.h,fit: BoxFit.fill,),
          ),
          AnimatedPositioned(
            top:0.55.sh,
            right: start ? 0.22.sw :-200,

            duration:const Duration(milliseconds: 800),
            child: Align(alignment:Alignment.centerLeft,child: Text("Check the signal",style: TextStyle(color: Colors.white,letterSpacing: 1,fontSize: 16.sp),)),
          )
        ],
      );
  },
),
    );
  }
}
