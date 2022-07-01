import 'package:birborge/utils/app_colors.dart';
import 'package:birborge/utils/styling_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/bitborg_icons_icons.dart';
import '../../custom_widgets/custom_button.dart';

class FavoriteCoins extends StatelessWidget {
  var data=[
    ["assets/images/eth.png","Etherium"],
    ["assets/images/bitcoin-cash-bch-logo.png","Bitcoin cash"],
    ["assets/images/btc-icon-200.png","Bitcoin"],
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              Icons.favorite_border_rounded,
                              color: Colors.white,
                              size: 20.sp,
                            )),
                      ),
                      Expanded(
                        flex: 2,
                        child: Align(
                            child: InkWell(
                              onTap: (){
                                addFavoriteCoinDialog(context);
                              },
                              child: Text(
                          "Favorite coins",
                          style: subheadingStyleBold,
                        ),
                            )),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: (){
                        ShowFavtCoins(data, context);
                      },
                      child: SizedBox(
                        width: 80.w,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.add,
                              color: mainYellow,
                              size: 20.sp,
                            ),
                             Align(
                                child: Text("Add coin",
                                    style: TextStyle(color: mainYellow,fontSize: 16.sp)))
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.sp,
          ),
          Container(
            height: 0.05.sh,
            alignment: Alignment.centerLeft,
            child: Text(
              "100 News found",
              style: TextStyle(color: Colors.white24, fontSize: 18.sp),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    width: 327.w,
                    height: 154.h,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                          "assets/images/news_item.png",
                                        ),
                                        fit: BoxFit.fill)),
                              )),
                              const Expanded(child: SizedBox())
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            width: 70.w,
                                            height: 30.h,
                                            decoration: BoxDecoration(
                                                color: Colors.white24,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.r)),
                                            child: Center(
                                                child: Text(
                                              index % 2 == 0
                                                  ? "Positive"
                                                  : "Negative",
                                              style: TextStyle(
                                                  color: index % 2 == 0
                                                      ? Colors.green
                                                      : Colors.red,fontSize: 16.sp),
                                            )),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "20, july ,2021",
                                            style: TextStyle(
                                                fontSize: 15.sp,
                                                color: Colors.grey),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                        "Bitcoin's ‘Upgrade for the Ages' Taproot is Here",
                                        style: TextStyle(fontSize: 16.sp,color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "The best Bitcoin casinos offer almost instant withdrawals, zero transaction fees, anonymous transfers, as well",
                                      style: TextStyle(
                                          fontSize: 13.sp, color: Colors.grey),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  void addFavoriteCoinDialog(BuildContext context) {
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
                              "assets/images/Group 1102.png",
                              width: 61.sp,
                              height: 69.5.sp,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            child: Text(
                              "Add Your Favourite Coins",
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
                              "E.g BTC, Eth, BNB etc",
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
                                  hintText: "Separate coin with ',' (BTC,ETH)",
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
                              child: CustomButton(title: "Add coin",color: mainYellow,ontap: (){},),
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

  void ShowFavtCoins(var data, BuildContext context) {
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
                              flex: 2,
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Image.asset(
                                  "assets/images/favcoin.png",
                                  width: 61.sp,
                                  height: 69.5.sp,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                child: Text(
                                  "Favorite Coins",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.sp),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "3 Coins Found",
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 13.sp),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: SizedBox(
                                width: 118.w,
                                child: ListView.builder(
                                  itemCount: data.length,
                                  itemBuilder: (context, index) {
                                    return SizedBox(
                                      height: 50.h,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Image.asset(
                                              data[index][0],
                                              width: 32.w,
                                              height: 32.h,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2.sp,
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: Text(
                                              data[index][1],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13.sp),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
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
}
