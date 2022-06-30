import 'package:birborge/views/custom_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../utils/bitborg_icons_icons.dart';

class SignalsDetails extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BTC USDT",
          style: TextStyle(fontSize: 25.sp),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.sp),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Singals #1001",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Expanded(
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "10:20 Pm 23/06/2021",
                        style: TextStyle(
                            color: Colors.white54,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
            _listItem(0),
            _targetItem(),
            _targetItem(),

          ],
        ),
      ),
      bottomNavigationBar:  Padding(
        padding: EdgeInsets.symmetric(vertical: 10.sp,horizontal: 10.sp),
          child: CustomButton(title: "Buy", color: Colors.green, ontap: (){

          })
      ),
    );
  }

  Widget _targetItem()
  {
    return Container(
      height: 76.h,
      margin: EdgeInsets.symmetric(vertical: 5.sp),
      padding: EdgeInsets.symmetric(vertical: 2.sp, horizontal: 2.sp),
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: const [
            BoxShadow(
              color: Colors.white38,
              spreadRadius: 0.2,
              blurRadius: 1,
            )
          ]),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: Icon(
                            BitborgIcons.icon_open_target,
                            color: Colors.white54,
                            size: 20.sp,
                          )),
                      Expanded(
                          flex: 2,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Target 1",
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 16.sp),
                              ))),
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "\$1200",
                      style: TextStyle(
                          color: Colors.green, fontSize: 16.sp),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Laravage 12",
                        style: TextStyle(
                            fontSize: 16.sp, color: lightGreen),
                      )),
                ),
                Expanded(
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Stop Loss 1.93",
                        style: TextStyle(
                            fontSize: 16.sp, color: Colors.red),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _listItem(int index) {
    return Container(
      height: 154.h,
      margin: EdgeInsets.symmetric(vertical: 5.sp),
      padding: EdgeInsets.symmetric(horizontal: 5.sp, vertical: 5.sp),
      decoration: BoxDecoration(
          color: itemsFill, borderRadius: BorderRadius.circular(10.r)),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child:
                                    Image.asset("assets/images/pair logos.png"),
                              ),
                              Expanded(
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "BTC USDT",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.sp,
                                      ),
                                    )),
                              ),
                              Expanded(
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Buy / Long",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.sp,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text("Binance",
                                          style: TextStyle(
                                              fontSize: 11.sp,
                                              color: Colors.white)))),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    width: 60.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(5.r)),
                                    child: Center(
                                      child: Text(
                                        "HOLD",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: Icon(
                                      BitborgIcons.icon_ionic_md_stats,
                                      size: 20.sp,
                                      color: mainYellow,
                                    )),
                                    SizedBox(
                                      height: 3.sp,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Stats",
                                        style: TextStyle(
                                            fontSize: 13.sp,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    width: 70.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: index.isEven
                                                ? Colors.red
                                                : lightGreen),
                                        borderRadius:
                                            BorderRadius.circular(5.r)),
                                    child: Center(
                                      child: Text(
                                        index.isEven ? "High Risk" : "Low Risk",
                                        style: TextStyle(
                                          color: index.isEven
                                              ? Colors.red
                                              : lightGreen,
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    width: 80.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(5.r)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                          child: Icon(
                                            BitborgIcons.icon_open_target,
                                            color: Colors.white,
                                            size: 20.sp,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            "Target 4",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13.sp),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Text.rich(TextSpan(
                                  text: "current price\n ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13.sp),
                                  children: [
                                    TextSpan(
                                        text: "+21.2 %",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 13.sp))
                                  ]))
                            ],
                          ),
                        ),
                        Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text.rich(
                                  textAlign: TextAlign.center,
                                  TextSpan(
                                      text: "Buying zone\n ",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13.sp),
                                      children: [
                                        TextSpan(
                                            text: "\$ 1290 -\$ 1329 %",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 13.sp))
                                      ]))),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
