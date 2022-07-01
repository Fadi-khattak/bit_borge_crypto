import 'package:birborge/utils/styling_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../news_screen_details.dart';

class AllNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
          Container(
            height: 0.05.sh,
            margin: const EdgeInsets.symmetric(vertical: 0),
            alignment: Alignment.centerLeft,
            child: Text(
              "100 News found",
              style: TextStyle(color: Colors.white24, fontSize: 18.sp),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                physics:const  AlwaysScrollableScrollPhysics(),
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
                    child: InkWell(
                      onTap: (){

                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsScreenDetails()));
                      },
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
                                                      BorderRadius.circular(10.r)),
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
                                          child: Container(
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
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                          "Bitcoin's ‘Upgrade for the Ages' Taproot is Here",
                                          style: subheadingStyleBold),
                                    ),
                                  ),
                                  Expanded(
                                    flex:2,
                                    child: Align(
                                      alignment: Alignment.topLeft,
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
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
