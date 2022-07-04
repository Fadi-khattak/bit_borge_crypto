import 'package:birborge/controllers/bottom_nav_cubit/cubit/bottom_nav_controller_cubit.dart';
import 'package:birborge/utils/app_colors.dart';
import 'package:birborge/utils/bitborg_icons_icons.dart';
import 'package:birborge/utils/styling_text.dart';
import 'package:birborge/views/custom_widgets/custom_button.dart';
import 'package:birborge/views/news_screen/news_screen.dart';
import 'package:birborge/views/signal_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controllers/slide_button_cubit/slide_controller_cubit.dart';

class RootScreen extends StatelessWidget {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            children: [
              Container(),
              NewsScreen(),
              SignalScreen(),
            ],
          ),
          BlocBuilder<SlideControllerCubit, bool>(
              builder: (context, isExpanded) {
            return AnimatedPositioned(
                bottom: 20.h,
                left: 0,
                width: isExpanded ? 0.4.sw : 0.15.sw,
                height: 44.h,
                duration: const Duration(milliseconds: 100),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 12.5,
                      child: Container(
                        height: 44.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.r),
                            bottomRight: Radius.circular(10.r),
                          ),
                          color: mainYellow,
                        ),
                        child: InkWell(
                          onTap: (){
                            if(isExpanded){
                            showPremiumDialog(context);}

                          },
                          child: Row(
                            children: [
                              Expanded(
                                  child: InkWell(
                                onTap: () {
                                  context
                                      .read<SlideControllerCubit>()
                                      .changeButtonState(true);
                                },
                                child: Icon(
                                  Icons.diamond_outlined,
                                  color: Colors.white,
                                  size: 30.sp,
                                ),
                              )),
                              isExpanded
                                  ? Expanded(
                                      flex: 3,
                                      child: Text(
                                        "Buy Premium",
                                        style: TextStyle(color: Colors.white,fontSize: 14.sp),
                                      ))
                                  : const SizedBox(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    isExpanded
                        ? Positioned(
                            right: 0,
                            top: 9.5.sp,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50.r),
                              onTap: () {
                                context
                                    .read<SlideControllerCubit>()
                                    .changeButtonState(false);
                              },
                              child: Container(
                                height: 30.r,
                                width: 30.r,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: bgColor,
                                    border: Border.all(color: mainYellow)),
                                child: Center(
                                    child: Text("x",
                                        style: TextStyle(
                                            color: mainYellow,
                                            fontSize: 14.sp))),
                              ),
                            ))
                        : const SizedBox(),
                  ],
                ));
          }),
        ],
      ),
      bottomNavigationBar: BlocBuilder<BottomNavControllerCubit, int>(
        builder: (context, currentPage) {
          return Container(
            height: 80.sp,
            padding: EdgeInsets.symmetric(vertical: 10.h),
            decoration: const BoxDecoration(
                color: bottomNavColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )),
            child: Row(
              children: [
                bottomNavItem(BitborgIcons.homebtmn, "Home",
                    currentPage == 0 ? mainYellow : Colors.white54, () {
                  context.read<BottomNavControllerCubit>().selectIndex(0);
                  pageController.jumpToPage(0);
                }),
                bottomNavItem(BitborgIcons.envelope, "News",
                    currentPage == 1 ? mainYellow : Colors.white54, () {
                  context.read<BottomNavControllerCubit>().selectIndex(1);
                  pageController.jumpToPage(1);
                }),
                bottomNavItem(BitborgIcons.signals, "Signals",
                    currentPage == 2 ? mainYellow : Colors.white54, () {
                  context.read<BottomNavControllerCubit>().selectIndex(2);
                  pageController.jumpToPage(2);
                }),
                bottomNavItem1(currentPage == 3 ? mainYellow : Colors.white54,
                    () {
                  context.read<BottomNavControllerCubit>().selectIndex(3);
                }),
              ],
            ),
          );
        },
      ),
    );
  }
  void showPremiumDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          contentPadding: EdgeInsets.all(5.sp),
          backgroundColor: bgColor,
          content: Container(
            height: 325.h,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        BitborgIcons.cross_circle,
                        color: mainYellow,
                        size: 30.sp,
                      )),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: 325.h,
                    child: Column(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset(
                              "assets/images/time-quarterpast.png",
                              width: 61.sp,
                              height: 69.5.sp,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            child: Text(
                              "Comming Soon",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.sp,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                            textAlign:TextAlign.center,
                              "The premium subscription will be launch soon To get notified Please enter your email below.",
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 13.sp),
                            ),
                          ),
                        ),

                        Expanded(
                          child: SizedBox(
                            width: 235.w,
                            height: 44.h,
                            child:  TextField(
                              style: TextStyle(color: Colors.white,fontSize: 16.sp),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: bgLight,
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey,fontSize: 16.sp),
                                border: InputBorder.none
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child:Align(
                            child: SizedBox(
                              width: 235.w,
                              height: 48.h,
                              child: CustomButton(title: "Let me know",color: mainYellow,ontap: (){},),
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget bottomNavItem(var icon, String title, Color color, var ontap) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: InkWell(
              onTap: ontap,
              child: Icon(
                icon,
                color: color,
                size: 30.sp,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(color: color, fontSize: 16.sp),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget bottomNavItem1(Color color, var ontap) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: InkWell(
                  onTap: ontap,
                  child: Image.asset(
                    "assets/images/gems.png",
                    width: 40.w,
                    height: 40.h,
                  ))),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: Text(
              "Gems",
              style: TextStyle(color: color, fontSize: 16.sp),
            ),
          )
        ],
      ),
    );
  }
}
