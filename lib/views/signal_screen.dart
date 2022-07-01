import 'package:birborge/controllers/signal_controllers_cubit/signal_tabs_controller_cubit.dart';
import 'package:birborge/utils/app_colors.dart';
import 'package:birborge/utils/bitborg_icons_icons.dart';
import 'package:birborge/utils/styling_text.dart';
import 'package:birborge/views/signals_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bloc/bloc.dart';

import 'custom_widgets/notification_widget.dart';
import 'drawer/MyDrawer.dart';

class SignalScreen extends StatefulWidget {
  @override
  State<SignalScreen> createState() => _SignalScreenState();
}

class _SignalScreenState extends State<SignalScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Signals"),
        centerTitle: true,
        actions: [
          NotificationWidget(),
          SizedBox(width: 20.sp,)
        ],
      ),
      drawer: MyDrawer(),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: BlocBuilder<SignalTabsControllerCubit, int>(
            builder: (context, selectedIndex) {
              return Column(
                  children: [

                    Expanded(
                      child: Container(

                          child: Row(
                              children: [
                                tabItem(selectedIndex, 0, "All"),
                                tabItem(selectedIndex, 1, "Hold"),
                                tabItem(selectedIndex, 2, "Scalp"),
                                tabItem(selectedIndex, 3, "Result F/S"),
                                tabItem(selectedIndex, 4, "Free"),
                              ]
                          )
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                                child: Image.asset("assets/images/bitcoin-cash-bch-logo.png",width: 20.w,height: 20.h,)),
                          ),
                          SizedBox(width: 5.sp,),
                          Expanded(
                            flex: 20,
                            child: Text("Hold BCH USDT for Long term to enjoy heavy gains!",style: TextStyle(color: Colors.green,fontSize: 16.sp),),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context,index){
                          return _listItem(index);
                        },
                      ),
                    ),
                    
                  ]
              );
            },
          )
      ),
    );
  }

  Widget _listItem(int index)
  {
    return Container(
      height: 154.h,
      margin: EdgeInsets.symmetric(vertical: 5.sp),
      padding: EdgeInsets.symmetric(horizontal: 5.sp,vertical: 5.sp),
      decoration:  BoxDecoration(
          color:itemsFill,
          borderRadius:BorderRadius.circular(10.r)
      ),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> SignalsDetails()));
        },
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex:2,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Image.asset("assets/images/pair logos.png"),
                              ),
                              Expanded(
                                child:Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("BTC USDT",style: TextStyle(color: Colors.white,fontSize: 16.sp,),)
                                ),
                              ),
                              Expanded(
                                child:Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Buy / Long",style: TextStyle(color: Colors.white,fontSize: 16.sp,),)
                                ),
                              ),

                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                        child:Icon(BitborgIcons.icon_ionic_md_stats,size: 20.sp,color: mainYellow,)
                                    ),
                                    SizedBox(height: 3.sp,),
                                    Expanded(
                                      child: Text("Stats",style: TextStyle(fontSize: 13.sp,color: Colors.white),),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(

                                  child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text("Binance",style:TextStyle(fontSize: 11.sp,color: Colors.white))
                                  )
                              ),

                              Expanded(
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    width: 60.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        borderRadius: BorderRadius.circular(5.r)
                                    ),
                                    child:Center(
                                      child: Text("HOLD",style: TextStyle(color: Colors.white,fontSize: 16.sp,),),
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
                                child: Align(
                                    alignment:Alignment.center,
                                    child: Text("Spot",style: TextStyle(color: Colors.white54,fontSize: 16.sp),)),
                              ),
                              Expanded(
                                child:Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    width: 70.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                        border: Border.all(color:index.isEven ? Colors.red : lightGreen),
                                        borderRadius: BorderRadius.circular(5.r)
                                    ),
                                    child:Center(
                                      child: Text(index.isEven ? "High Risk" : "Low Risk",style: TextStyle(color:index.isEven ? Colors.red : lightGreen,fontSize: 16.sp,),),
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
                                        borderRadius: BorderRadius.circular(5.r)
                                    ),
                                    child:Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                          child: Icon(BitborgIcons.icon_open_target,color: Colors.white,size: 20.sp,),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Text("Target 4",style: TextStyle(color: Colors.white,fontSize: 13.sp),),
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
                            children:  [
                              Text.rich(
                                  TextSpan(
                                      text: "current price ",
                                      style: TextStyle(color: Colors.white,fontSize: 13.sp),
                                      children: [
                                        TextSpan(
                                            text: "+21.2 %",
                                            style: TextStyle(color: Colors.green,fontSize: 13.sp)
                                        )
                                      ]
                                  )
                              )
                            ],
                          ),
                        ),

                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text("10:20 Pm 23/06/2021",style: TextStyle(color: Colors.white24,fontSize: 13.sp),),
                          ),
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

  Widget tabItem(int selectedIndex, int itemIndex, String txt) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.sp),
        child: Column(
          children: [
            Expanded(
                child: InkWell(
                  onTap: () {
                    context.read<SignalTabsControllerCubit>()
                        .selectedIndex(itemIndex);
                    // pageController.jumpToPage(index);
                  },
                  child: Text(
                    txt,
                    style: TextStyle(
                        color: selectedIndex == itemIndex
                            ? Colors.orange
                            : Colors.white54,
                        fontSize: 16.sp),
                  ),
                )),
            Expanded(
                child: selectedIndex == itemIndex
                    ? Icon(Icons.circle,
                    size: 10.sp, color: Colors.orange)
                    : const SizedBox(
                  height: 0,
                  width: 0,
                )),
          ],
        ),
      ),
    );
  }
}