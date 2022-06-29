import 'package:birborge/controllers/bottom_nav_cubit/cubit/bottom_nav_controller_cubit.dart';
import 'package:birborge/utils/app_colors.dart';
import 'package:birborge/utils/bitborg_icons_icons.dart';
import 'package:birborge/views/news_screen/news_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RootScreen extends StatelessWidget {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          Container(),
          NewsScreen(),
        ],
      ),
      bottomNavigationBar: BlocBuilder<BottomNavControllerCubit, int>(
        builder: (context, currentPage) {
          return Container(
            height: 80.h,
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
