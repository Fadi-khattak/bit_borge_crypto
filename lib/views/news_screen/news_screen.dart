import 'package:birborge/controllers/news_controller_cubit/cubit/news_controller_cubit.dart';
import 'package:birborge/views/custom_widgets/notification_widget.dart';
import 'package:birborge/views/drawer/MyDrawer.dart';
import 'package:birborge/views/news_screen/news_tabs/all_news.dart';
import 'package:birborge/views/news_screen/news_tabs/favorite_coins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../notification_screen.dart';

class NewsScreen extends StatelessWidget {
  var pageController = PageController();

  var catagories = [
    'All',
    'Favorite coins',
    'Popular  Events',
    'Neutral',
    'Positive',
    'Negative',
    'Technical Analysis'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("News"),
        actions: [
          InkWell(onTap:(){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>NotificationScreen()));
          },child: const NotificationWidget()),
          SizedBox(width: 20.sp,)
        ],
      ),
      drawer: MyDrawer(),
      body: BlocBuilder<NewsControllerCubit, int>(
        builder: (context, selectedIndex) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: catagories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Column(
                        children: [
                          Expanded(
                              child: InkWell(
                            onTap: () {
                              context
                                  .read<NewsControllerCubit>()
                                  .updateSelectedIndex(index);
                              pageController.jumpToPage(index);
                            },
                            child: Text(
                              catagories[index],
                              style: TextStyle(
                                  color: selectedIndex == index
                                      ? Colors.orange
                                      : Colors.white54,
                                  fontSize: 18.sp),
                            ),
                          )),
                          Expanded(
                              child: selectedIndex == index
                                  ? Icon(Icons.circle,
                                      size: 10.sp, color: Colors.orange)
                                  : const SizedBox(
                                      height: 0,
                                      width: 0,
                                    )),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                  flex: 10,
                  child: PageView(
                    controller: pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [AllNews(), FavoriteCoins()],
                  ))
            ],
          );
        },
      ),
    );
  }
}
