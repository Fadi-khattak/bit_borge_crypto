import 'package:birborge/utils/app_colors.dart';
import 'package:birborge/views/custom_widgets/custom_button.dart';
import 'package:birborge/views/custom_widgets/custom_coutrypicker.dart';
import 'package:birborge/views/custom_widgets/my_textfield.dart';
import 'package:birborge/views/custom_widgets/textfield_header.dart';
import 'package:birborge/views/drawer/MyDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/bitborg_icons_icons.dart';
import 'custom_widgets/my_passwordfield.dart';

class ResetPass extends StatelessWidget {
  const ResetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Reset pass")
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.sp),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Reset Password",
                style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10.sp,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.sp),
              child: Text(
                "Below field are required to fill for the  password reset",
                style: TextStyle(color: Colors.white54,fontSize: 16.sp),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20.sp,),
            mTextFieldHeader(title: "New password"),
            MyPasswordField(prefixIcon: BitborgIcons.lock, suffixIcon: CupertinoIcons.eye_slash, controller: null, showpass: false),
            SizedBox(height: 20.sp,),
            mTextFieldHeader(title: "Confirm password"),
            MyPasswordField(prefixIcon: BitborgIcons.lock, suffixIcon: CupertinoIcons.eye_slash, controller: null, showpass: false),
            SizedBox(height: 20.sp,),
            CustomButton(
                title: "Reset Password",
                color: mainYellow,
                ontap: (){})

          ],
        ),
      ),
    );
  }
}
