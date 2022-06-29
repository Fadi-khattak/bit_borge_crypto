import 'package:birborge/controllers/bottom_nav_cubit/cubit/bottom_nav_controller_cubit.dart';
import 'package:birborge/controllers/verification_controller_cubit/verification_controller_cubit.dart';
import 'package:birborge/utils/app_colors.dart';
import 'package:birborge/views/root_screen.dart';
import 'package:birborge/views/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            ],
            child: MaterialApp(
              theme: ThemeData(
                  scaffoldBackgroundColor: bgColor,
                  appBarTheme: const AppBarTheme(
                      color: bgColor,
                      elevation: 0,
                      iconTheme: IconThemeData(color: Colors.white))),
              home: const RootScreen(),
            ),
          );
        });
  }
}
