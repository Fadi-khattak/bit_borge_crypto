import 'package:birborge/utils/app_colors.dart';
import 'package:birborge/utils/styling_text.dart';
import 'package:birborge/views/root_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controllers/verification_controller_cubit/verification_controller_cubit.dart';
import 'custom_widgets/custom_button.dart';

class Verification extends StatelessWidget {
  final c1 = TextEditingController();
  final c2 = TextEditingController();
  final c3 = TextEditingController();
  final c4 = TextEditingController();

  String otp = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Verification Code",
          style: headingStyle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: BlocBuilder<VerificationControllerCubit, bool>(
          builder: (context, isCompleted) {
            return ListView(
              children: [
                Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(children: [
                      TextSpan(
                          text: "Please enter the", style: subheadingStyle),
                      TextSpan(text: " 4 digit ", style: subheadingStyleBold),
                      TextSpan(
                          text: "code that we have sent to you through email ",
                          style: subheadingStyle),
                      TextSpan(
                          text: "user@mail.com", style: subheadingStyleBold)
                    ])),
                SizedBox(
                  height: 40.h,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: digitBox(
                              controller: c1,
                              isCompleted: isCompleted,
                              oncomplete: (value) {
                                if (value.toString().isNotEmpty) {
                                  if (otp.length < 4) otp += value;
                                  context
                                      .read<VerificationControllerCubit>()
                                      .checkCompletion(otp);
                                  FocusScope.of(context).nextFocus();
                                } else if (value.toString().isEmpty) {
                                  otp = otp.substring(0, otp.length - 2);
                                  context
                                      .read<VerificationControllerCubit>()
                                      .checkCompletion(otp);
                                }
                              })),
                      SizedBox(
                        width: 40.w,
                      ),
                      Expanded(
                          child: digitBox(
                              controller: c2,
                              isCompleted: isCompleted,
                              oncomplete: (value) {
                                if (value.toString().isNotEmpty) {
                                  if (otp.length < 4) otp += value;
                                  context
                                      .read<VerificationControllerCubit>()
                                      .checkCompletion(otp);
                                  FocusScope.of(context).nextFocus();
                                } else if (value.toString().isEmpty) {
                                  otp = otp.substring(0, otp.length - 2);
                                  context
                                      .read<VerificationControllerCubit>()
                                      .checkCompletion(otp);
                                  FocusScope.of(context).previousFocus();
                                }
                              })),
                      SizedBox(
                        width: 40.w,
                      ),
                      Expanded(
                          child: digitBox(
                              controller: c3,
                              isCompleted: isCompleted,
                              oncomplete: (value) {
                                if (value.toString().isNotEmpty) {
                                  if (otp.length < 4) otp += value;
                                  context
                                      .read<VerificationControllerCubit>()
                                      .checkCompletion(otp);
                                  FocusScope.of(context).nextFocus();
                                } else if (value.toString().isEmpty) {
                                  otp = otp.substring(0, otp.length - 2);
                                  context
                                      .read<VerificationControllerCubit>()
                                      .checkCompletion(otp);
                                  FocusScope.of(context).previousFocus();
                                }
                              })),
                      SizedBox(
                        width: 40.w,
                      ),
                      Expanded(
                          child: digitBox(
                              controller: c4,
                              isCompleted: isCompleted,
                              oncomplete: (value) {
                                if (value.toString().isNotEmpty) {
                                  if (otp.length < 4) otp += value;
                                  context
                                      .read<VerificationControllerCubit>()
                                      .checkCompletion(otp);
                                } else if (value.toString().isEmpty) {
                                  otp = otp.substring(0, otp.length - 2);
                                  context
                                      .read<VerificationControllerCubit>()
                                      .checkCompletion(otp);
                                  FocusScope.of(context).previousFocus();
                                }
                              })),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                isCompleted ? _verifiedMessage() : _timeAndResend(),
                SizedBox(
                  height: 20.h,
                ),
                CustomButton(
                  title: "continue",
                  color: isCompleted ? mainYellow : Colors.grey,
                  ontap: () {
                    if (isCompleted) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RootScreen()));
                    }
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget digitBox(
      {required var controller, var oncomplete, required bool isCompleted}) {
    return SizedBox(
      width: 50.w,
      height: 50.h,
      child: TextField(
        maxLength: 1,
        maxLines: 1,
        autofocus: true,
        onChanged: oncomplete,
        textAlign: TextAlign.center,
        controller: controller,
        showCursor: false,
        keyboardType: TextInputType.number,
        style: subheadingStyleBold,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
            counter: Offstage(),
            border: const OutlineInputBorder(
                borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            )),
            enabledBorder: isCompleted
                ? const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.green,
                    ),
                  )
                : const OutlineInputBorder(
                    borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  )),
            focusedBorder: isCompleted
                ? const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.green,
                    ),
                  )
                : const OutlineInputBorder(
                    borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  )),
            fillColor: Colors.white12,
            filled: true),
      ),
    );
  }

  Widget _timeAndResend() {
    return Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.access_time_rounded,
                        color: Colors.white54,
                        size: 30.sp,
                      ))),
              Expanded(
                  flex: 5,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "00:10",
                        style:
                            TextStyle(color: Colors.white54, fontSize: 16.sp),
                      ))),
            ],
          ),
        ),
        Expanded(
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Resend Code",
                  style: TextStyle(color: mainYellow, fontSize: 16.sp),
                )))
      ],
    );
  }

  Widget _verifiedMessage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
            flex: 2,
            child: Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.shield_rounded,
                  size: 22.sp,
                  color: Colors.green,
                ))),
        Expanded(
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Code is Verified",
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                )))
      ],
    );
  }
}
