import 'package:birborge/views/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';
import '../../utils/constants.dart';
import '../custom_widgets/notification_widget.dart';
import '../drawer/MyDrawer.dart';

class NewsScreenDetails extends StatelessWidget {
  const NewsScreenDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News"),
        centerTitle: true,
        actions: [
        InkWell(onTap:(){
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>NotificationScreen()));
        },child: const NotificationWidget()),
        SizedBox(width: 20.sp,)
      ],
      ),
      body: ListView(
      children: [
        Container(
          height: 214.h,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    image:DecorationImage(
                      image: AssetImage('assets/images/Image 1.png'),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  top: 0,
                child: Container(
                  decoration: const BoxDecoration(
                      image:DecorationImage(
                        image: AssetImage('assets/images/filter.png'),
                        fit: BoxFit.cover,
                      )
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child:Container(
                  height: 50.sp,
                 padding: EdgeInsets.symmetric(horizontal: 10.sp),
                 child: Column(
                   children: [
                     Expanded(
                       child: Row(
                         children: [
                          Expanded(
                            child:  Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 65.w,
                                    height: 23.h,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5.r),
                                    ),
                                    child: Center(
                                      child: Text("Negative",style:TextStyle(color: Colors.red,fontSize: 13.sp),),
                                    )
                                  ),
                                ),
                                SizedBox(width: 5.sp,),
                                Expanded(
                                  child: Text("20 July, 2021",style: TextStyle(fontSize: 13.sp,color: Colors.white54),),
                                ),
                              ],
                            ),
                          ),

                           Expanded(
                             child: Align(
                               alignment: Alignment.centerRight,
                               child: InkWell(
                                 onTap: (){},
                                 child: SizedBox(
                                   width: 60.w,
                                   child: Row(
                                     children: [
                                       Expanded(
                                         child: Icon(Icons.share,color: mainYellow,size: 20.sp,),
                                       ),
                                       Expanded(
                                         child:Text("Share",style: TextStyle(color: mainYellow,fontSize: 13.sp),),
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
                     Expanded(
                       child: Row(
                         children: [
                           Expanded(
                             child: Text("Bitcoin's ‘Upgrade for the Ages' Taproot is not Here",style: TextStyle(color: Colors.white,fontSize: 16.sp,)),
                           )
                         ],
                       ),
                     ),
                   ],
                 ),
                ),
              )
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.sp,vertical: 10.sp),
          child: Text(
              news,
            style: TextStyle(color: Colors.white54,fontSize: 13.sp),
          ),
        )
      ],
    ),

    );
  }
}
