import 'package:birborge/utils/app_colors.dart';
import 'package:birborge/utils/bitborg_icons_icons.dart';
import 'package:birborge/views/subscription_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../profile_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: bgColor,
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: ListView(
                children: [
                  SizedBox(
                    height: 193.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 56.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment:Alignment.bottomLeft,
                              child: SizedBox(
                                height: 40.sp,
                                width: 40.sp,
                                child: InkWell(
                                  onTap: (){

                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: mainYellow,
                                    child: Center(
                                      child: Icon(Icons.person,color: Colors.white,size: 30.sp,),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Expanded(
                            child: Align(
                              alignment:Alignment.centerLeft,
                              child: Text("Fahad Shabir",style: TextStyle(fontSize: 16.sp,color: Colors.white,fontWeight: FontWeight.bold),)
                            ),
                          ),
                          Expanded(
                            child: Align(
                                alignment:Alignment.centerLeft,
                                child: Text("fahad@gmail.com",style: TextStyle(fontSize: 16.sp,color: Colors.white54),)
                            ),
                          ),

                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context)=>const SubscriptionScreen()
                                      )
                                  );
                                },
                                borderRadius: BorderRadius.circular(10.r),
                                child: Container(
                                  height: 40.sp,
                                  width: 175.sp,
                                  decoration: BoxDecoration(
                                    color: Colors.white12,
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Icon(Icons.diamond_outlined,color: mainYellow,size: 30.sp,),
                                      ),
                                       Expanded(
                                        flex: 2,
                                        child: Align(
                                          alignment: Alignment.center,
                                            child: Text("Premium",style: TextStyle(color: mainYellow,fontSize: 16.sp),)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                 const Divider(
                    thickness: 1,
                    color: Colors.white12,
                  ),
                  ListTile(
                    leading: Icon(BitborgIcons.homebtmn,color: Colors.white,size: 30.sp,),
                    title: Text("Home",style: TextStyle(color: Colors.white,fontSize: 16.sp),),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(BitborgIcons.headset__1_,color: Colors.white,size: 30.sp,),
                    title: Text("Contact us",style: TextStyle(color: Colors.white,fontSize: 16.sp),),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(BitborgIcons.settings__1_,color: Colors.white,size: 30.sp,),
                    title: Text("Settings",style: TextStyle(color: Colors.white,fontSize: 16.sp),),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(BitborgIcons.sign_out_alt,color: Colors.white,size: 30.sp,),
                    title: Text("Logout",style: TextStyle(color: Colors.white,fontSize: 16.sp),),
                    onTap: (){},
                  )
                ],
              ),
            ),
            Expanded(
              child: Align(
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)=>const SubscriptionScreen()
                        )
                    );
                  },
                  borderRadius: BorderRadius.circular(10.r),
                  child: Container(
                    height: 40.sp,
                    width: 180.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: mainYellow
                    ),
                    child:  Row(
                      children: [
                        Expanded(
                          child: Icon(Icons.diamond_outlined,color: Colors.black,size: 30.sp,),
                        ),
                         Expanded(
                          flex: 3,
                          child: Align(
                              alignment: Alignment.center,
                              child: Text("Upgrade plan",style: TextStyle(color: Colors.black,fontSize:16.sp),)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
