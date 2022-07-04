import 'package:birborge/controllers/bottom_nav_cubit/cubit/bottom_nav_controller_cubit.dart';
import 'package:birborge/controllers/news_controller_cubit/cubit/news_controller_cubit.dart';
import 'package:birborge/controllers/onboarding_controller_cubit.dart';
import 'package:birborge/controllers/signal_controllers_cubit/signal_tabs_controller_cubit.dart';
import 'package:birborge/controllers/slide_button_cubit/slide_controller_cubit.dart';
import 'package:birborge/controllers/verification_controller_cubit/verification_controller_cubit.dart';
import 'package:birborge/utils/app_colors.dart';
import 'package:birborge/views/login_screen.dart';
import 'package:birborge/views/news_screen/news_screen.dart';
import 'package:birborge/views/news_screen/news_screen_details.dart';
import 'package:birborge/views/news_screen/news_tabs/favorite_coins.dart';
import 'package:birborge/views/notification_screen.dart';
import 'package:birborge/views/onboarding_screen.dart';
import 'package:birborge/views/profile_screen.dart';
import 'package:birborge/views/reset_pass.dart';
import 'package:birborge/views/root_screen.dart';
import 'package:birborge/views/signal_screen.dart';
import 'package:birborge/views/signals_details.dart';
import 'package:birborge/views/splash_screen.dart';
import 'package:birborge/views/subscription_screen.dart';
import 'package:birborge/views/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controllers/aknowlege_cubit/aknowlege_controller_cubit.dart';
import 'controllers/country_selection_cubit.dart';
import 'controllers/splash_cubit/splash_controller_cubit.dart';
import 'controllers/terms_and_conditions_controller/terms_and_condition_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => VerificationControllerCubit()),
              BlocProvider(create: ((context) => BottomNavControllerCubit())),
              BlocProvider(create: (context) => NewsControllerCubit()),
              BlocProvider(create: (context) => SlideControllerCubit()),
              BlocProvider(create: (context) => SignalTabsControllerCubit()),
              BlocProvider(create: (context) => SplashControllerCubit()),
              BlocProvider(create: (create)=>CountrySelectionCubit()),
              BlocProvider(create: (create)=>TermsAndConditionCubit()),
              BlocProvider(create: (create)=>AknowlegeControllerCubit()),
              BlocProvider(create: (create)=>OnboardingControllerCubit())
              
            ],
            child: MaterialApp(
              theme: ThemeData(
                  scaffoldBackgroundColor: bgColor,
                  fontFamily: 'Montserrat',
                  appBarTheme:  AppBarTheme(
                      color: bgColor,
                      elevation: 0,
                      toolbarHeight: 60.sp,
                      titleTextStyle: TextStyle(color: Colors.white,fontSize: 25.sp,fontWeight: FontWeight.bold),
                      iconTheme:const IconThemeData(color: Colors.white))),
              home: SplashScreen(),
            ),
          );
        });
  }
}
