import 'package:birborge/controllers/onboarding_controller_cubit.dart';
import 'package:birborge/utils/app_colors.dart';
import 'package:birborge/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/onboarding_model.dart';

class OnBoarding extends StatelessWidget {
  var controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<OnboardingControllerCubit, int>(
        builder: (context, currentIndex) {
          return Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: PageView.builder(
                          controller: controller,
                          onPageChanged: (index) {
                            context
                                .read<OnboardingControllerCubit>()
                                .changeIndex(index);
                          },
                          itemCount: contents.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      contents[index].image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    Expanded(
                        child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 10.sp,
                        width: 15 * contents.length.toDouble(),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: contents.length,
                            itemBuilder: (context, index) {
                              return Container(
                                  height: 10.sp,
                                  width: currentIndex == index ? 20.sp : 10.sp,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: currentIndex == index
                                        ? mainYellow
                                        : Colors.grey,
                                  ));
                            }),
                      ),
                    )),
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: 1.sw,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.sp, vertical: 20.sp),
                        decoration: BoxDecoration(
                            color: bgLight,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.r),
                              topRight: Radius.circular(20.r),
                            )),
                        child: Column(
                          children: [
                            Expanded(
                              child: Text(
                                contents[currentIndex].title,
                                style: TextStyle(
                                    fontSize: 25.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 5.sp,
                            ),
                            Expanded(
                                flex: 5,
                                child: Text(
                                  contents[currentIndex].desc,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    color: Colors.white54,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 40.sp,
                left: 0,
                right: 0,
                child: Container(
                  child: Row(
                    children: [
                      currentIndex > 0 ? Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5.sp),
                            child:  Text(
                          "Back",
                          style: TextStyle(color: mainYellow,fontSize: 20.sp),
                        )),
                      ):const SizedBox(),
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
                                  value:currentIndex==0? 0.33 : currentIndex==1 ? 0.66 : 1,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                
                                onTap: (){
                                  if(currentIndex<2) {
                                    print(currentIndex);
                                    controller.jumpToPage(currentIndex+1);
                                  }
                                  else{
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context)=>const LoginScreen(),
                                        )
                                    );
                                  }
                                },
                                borderRadius: BorderRadius.circular(50.r),
                                child: Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    height: 100.r,
                                    width: 100.r,
                                    child: Container(
                                      margin: EdgeInsets.all(10.sp),
                                      decoration: const BoxDecoration(
                                          color: mainYellow,
                                          shape: BoxShape.circle),
                                      child: Center(
                                          child: Icon(
                                        Icons.arrow_forward_outlined,
                                        color: Colors.white,
                                        size: 30.sp,
                                      )),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
