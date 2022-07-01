import 'package:birborge/views/custom_widgets/custom_button.dart';
import 'package:birborge/views/custom_widgets/custom_coutrypicker.dart';
import 'package:birborge/views/custom_widgets/my_textfield.dart';
import 'package:birborge/views/custom_widgets/textfield_header.dart';
import 'package:birborge/views/reset_pass.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controllers/country_selection_cubit.dart';
import '../utils/app_colors.dart';
import '../utils/bitborg_icons_icons.dart';
import 'custom_widgets/notification_widget.dart';
import 'notification_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        actions: [
          InkWell(onTap:(){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>NotificationScreen()));
          },child: const NotificationWidget()),
          SizedBox(width: 20.sp,)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.sp),
        child: ListView(
          children: [
            SizedBox(
              height: 150.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 56.sp),
                child: Column(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 50.sp,
                          width: 50.sp,
                          child: CircleAvatar(
                            backgroundColor: mainYellow,
                            child: Center(
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 30.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Fahad Shabir",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    Expanded(
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "fahad@gmail.com",
                            style:
                                TextStyle(fontSize: 20.sp, color: Colors.white54),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.white12,
            ),
            mTextFieldHeader(title: "Full name"),
            MytextField(controller: null, prefixIcon: BitborgIcons.user),
            SizedBox(
              height: 20.sp,
            ),
            mTextFieldHeader(title: "Country"),
            BlocBuilder<CountrySelectionCubit, Country>(
              builder: (context, selectedCountry) {
                return CustomCountrypicker(onselect: (Country country){
                  selectedCountry=country;
                }, country: selectedCountry);
              },
            ),

          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 0.3.sw,
        padding: EdgeInsets.symmetric(horizontal: 24.sp),
        child: ListView(
          physics:const NeverScrollableScrollPhysics(),
          children: [
            CustomButton(title: "Save changes", color: mainYellow, ontap: (){}),
            SizedBox(height: 20.sp,),
            InkWell(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(
                  builder: (context)=>const ResetPass(),
                )
                );
              },
              child: Container(
                height: 48.h,
                decoration: BoxDecoration(
                    color: bgColor, borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(color: mainYellow)
                ),
                child: Center(
                    child: Text(
                      "change password",
                      style: TextStyle(color: mainYellow,fontSize: 16.sp,),
                    )),
              ),
            )

          ],
        ),
      ),
    );
  }
}
