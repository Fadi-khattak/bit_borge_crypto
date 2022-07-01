
import 'package:birborge/utils/app_colors.dart';
import 'package:birborge/utils/bitborg_icons_icons.dart';
import 'package:birborge/views/custom_widgets/custom_button.dart';
import 'package:birborge/views/custom_widgets/my_passwordfield.dart';
import 'package:birborge/views/reset_pass.dart';
import 'package:birborge/views/root_screen.dart';
import 'package:birborge/views/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constants.dart';
import 'custom_widgets/my_textfield.dart';
import 'custom_widgets/textfield_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(appbarLogo,height: 0.2.sh,width:0.3.sw ,),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.sp),
        child: ListView(
          children: [
            SizedBox(height: 60.sp,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.sp),
              child:  Text("LogIn",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp)),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.sp,vertical: 10.sp),
              child:  Text("Please enter email & password to login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,)),
            ),
            SizedBox(height: 0.03.sh,),
            mTextFieldHeader(title: "Email"),
            MytextField(prefixIcon: BitborgIcons.envelope,controller: null),
            SizedBox(height: 0.03.sh,),
            mTextFieldHeader(title: "Password"),
            MyPasswordField(prefixIcon: BitborgIcons.lock, suffixIcon: CupertinoIcons.eye_slash, controller: null, showpass: false),
             Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: (){

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>ResetPass()));

                },
                  child: Text("Forgot password ?",style: TextStyle(color: mainYellow,fontSize: 16.sp),)
              ),
            ),
            SizedBox(height: 50.sp,),
            CustomButton(title: "Login", color: mainYellow, ontap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>RootScreen())
              );
            }),
            
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 50.sp,
        child: Center(
          child: Text.rich(
            TextSpan(
              text: "Don't have an account? ",
              style: TextStyle(color: Colors.white,fontSize: 14.sp),
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()..onTap=(){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>SignupScreen(),
                    ));
                  },
                    text: "Create Account?",style: TextStyle(color: mainYellow,fontSize: 14.sp))
              ]
            )
          ),
        ),
      ),
    );
  }
}
