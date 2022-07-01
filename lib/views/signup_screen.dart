
import 'package:birborge/controllers/aknowlege_cubit/aknowlege_controller_cubit.dart';
import 'package:birborge/controllers/country_selection_cubit.dart';
import 'package:birborge/utils/app_colors.dart';
import 'package:birborge/views/custom_widgets/custom_button.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controllers/terms_and_conditions_controller/terms_and_condition_cubit.dart';
import '../utils/bitborg_icons_icons.dart';
import '../utils/constants.dart';
import 'custom_widgets/custom_coutrypicker.dart';
import 'custom_widgets/my_textfield.dart';
import 'custom_widgets/textfield_header.dart';

class SignupScreen extends StatelessWidget {
  Country? country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(appbarLogo,height: 0.2.sh,width:0.3.sw ,),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.sp),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.sp),
              child: Text("SignUp", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp),
            ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
              child: Text("Please enter below information for account creation",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp)),
            ),
            SizedBox(
              height: 10.sp,
            ),
            mTextFieldHeader(title: "Full name"),
            MytextField(controller: null),
            SizedBox(
              height: 10.sp,
            ),
            mTextFieldHeader(title: "Email"),
            MytextField(controller: null),

            SizedBox(
              height: 10.sp,
            ),
            mTextFieldHeader(title: "Country"),
            BlocBuilder<CountrySelectionCubit, Country?>(
              builder: (context, currentCountry) {
                return CustomCountrypicker(
                    onselect: (Country country) {
                      context
                          .read<CountrySelectionCubit>()
                          .selectedCountry(country);
                    },
                    country: currentCountry!);
              },
            ),
            SizedBox(
              height: 10.sp,
            ),
            mTextFieldHeader(title: "Password"),
            MytextField(controller: null),

            BlocBuilder<TermsAndConditionCubit, bool>(
              builder: (context, isChecked) {
                return Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                        fillColor: MaterialStateProperty.all(mainYellow),
                        value: isChecked,
                        onChanged: (bool? val) {
                          context.read<TermsAndConditionCubit>().changeCheckState(val!);
                          if(val)
                            {
                              showBottomSheet(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: bgColor,
                                  context: context,
                                  builder: (context){
                                    return ListView(
                                      children: [
                                        Text("Risk Warning",style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                                        SizedBox(height: 40.sp,),
                                        Text("Trading and investing in cryptocurrencies involve a substantial risk of loss and is not suitable for every person. The valuation of cryptocurrencies and related products may fluctuate and, as a result, clients may lose more than their original investment. Unless a person knows and fully understands the risks involved in cryptocurrencies, they should not engage in any transactions on the platform provided by Bitborg.\n\nUsers should not risk more than they are prepared to lose. Prior to opening an account with Bitborg or placing any orders, Users should carefully consider which Signal/Call is suitable for them, taking into account its nature, volatility and legality.If the User does not understand the risks related to cryptocurrencies, they should consult an independent financial advisor. If after obtaining proper legal and/or financial advice from a qualified professional, they still do not understand these risks, then they should refrain from using the services.\n\nBitborg is not providing the User with any investment, legal, regulatory or other form of advice. The User is required to rely on their own judgment (with or without the assistance of an advisor) in using the services of Bitborg. In asking to provide its services, the User represents that they are solely responsible for making their own independent appraisal and investigation into the risks of the Company’s services.There’s always a possibility of sudden and adverse shifts in trading and other market activities. Every time you finance a purchase or sale of virtual currencies on a peer-to-peer basis you may suffer from not being able orepay that financing. Every cryptocurrency has its own features – blockchain, protocols, etc. and inherent risks which you must understandbefore investing in it.Accordingly,cryptocurrencies should be seen as extremely high risk assets and you should never invest funds that you cannot afford to lose",style: TextStyle(fontSize: 14.sp,color: Colors.grey),)
                                      ],
                                    );
                                  }
                              );
                            }
                        }),
                    Expanded(child: Text(
                      "Do you agree to Bitborg's Terms and Conditions?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp),))
                  ],
                );
              },
            ),
            BlocBuilder<AknowlegeControllerCubit, bool>(
              builder: (context, isChecked) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        checkColor: Colors.white,
                        activeColor: mainYellow,
                        fillColor: MaterialStateProperty.all(mainYellow),
                        value: isChecked,
                        onChanged: (bool? val) {
                          context.read<AknowlegeControllerCubit>().changeAknowlegeCheckState(val!);
                          if(val)
                            {
                              showModalBottomSheet(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: bgColor,
                                  context: context,
                                  builder: (context){
                                    return Stack(
                                      children: [
                                        Positioned(
                                          top: 10.sp,
                                          right: 10.sp,
                                          child: IconButton(onPressed: (){
                                            Navigator.pop(context);
                                          }, icon: Icon(BitborgIcons.cross_circle,color: mainYellow,size: 20.sp,)),
                                        ),
                                        Positioned(
                                          top:40.sp,
                                          right:0,
                                          left:10.sp,
                                          bottom:0,
                                          child: ListView(
                                            children: [
                                              Text("Risk Warning",style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                                              SizedBox(height: 40.sp,),
                                              Text("Trading and investing in cryptocurrencies involve a substantial risk of loss and is not suitable for every person. The valuation of cryptocurrencies and related products may fluctuate and, as a result, clients may lose more than their original investment. Unless a person knows and fully understands the risks involved in cryptocurrencies, they should not engage in any transactions on the platform provided by Bitborg.\n\nUsers should not risk more than they are prepared to lose. Prior to opening an account with Bitborg or placing any orders, Users should carefully consider which Signal/Call is suitable for them, taking into account its nature, volatility and legality.If the User does not understand the risks related to cryptocurrencies, they should consult an independent financial advisor. If after obtaining proper legal and/or financial advice from a qualified professional, they still do not understand these risks, then they should refrain from using the services.\n\nBitborg is not providing the User with any investment, legal, regulatory or other form of advice. The User is required to rely on their own judgment (with or without the assistance of an advisor) in using the services of Bitborg. In asking to provide its services, the User represents that they are solely responsible for making their own independent appraisal and investigation into the risks of the Company’s services.There’s always a possibility of sudden and adverse shifts in trading and other market activities. Every time you finance a purchase or sale of virtual currencies on a peer-to-peer basis you may suffer from not being able orepay that financing. Every cryptocurrency has its own features – blockchain, protocols, etc. and inherent risks which you must understandbefore investing in it.Accordingly,cryptocurrencies should be seen as extremely high risk assets and you should never invest funds that you cannot afford to lose",style: TextStyle(fontSize: 14.sp,color: Colors.grey),)
                                            ],
                                          ),
                                        )
                                      ],
                                    );
                                  }
                              );
                            }
                        }),
                    Expanded(child: Text(
                      "Do you Acknowledge the Risk attached to trading?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp),))
                  ],
                );
              },
            ),
            CustomButton(title: 'Signup', ontap: (){

            }, color: mainYellow,),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50.sp,
        child: Center(
          child: Text.rich(
              TextSpan(
                  text: "Already have an account? ",
                  style: TextStyle(color: Colors.white,fontSize: 14.sp),
                  children: [
                    TextSpan(
                        recognizer: TapGestureRecognizer()..onTap=(){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>SignupScreen(),
                          ));
                        },
                        text: "Login?",style: TextStyle(color: mainYellow,fontSize: 14.sp))
                  ]
              )
          ),
        ),
      ),
    );
  }
}
