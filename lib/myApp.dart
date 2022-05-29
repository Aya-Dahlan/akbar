import 'package:akbar/UI/DrowarScreen/general_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'UI/AuthScreens/ForgetPassword/forget_password.dart';
import 'UI/AuthScreens/LoginScreen/login_screen.dart';
import 'UI/AuthScreens/RegisterScreen/register_screen.dart';
import 'UI/BottombarScreens/MainScreen/main_screen.dart';
import 'UI/DrowarScreen/askar_screen.dart';
import 'UI/DrowarScreen/company_screen.dart';
import 'UI/DrowarScreen/madania_screen.dart';
import 'UI/DrowarScreen/result_screen.dart';
import 'UI/DrowarScreen/settings_screen.dart';
import 'UI/SplashScreen/splash_screen.dart';
import 'UI/WelcomeScreens/welcome_screens.dart';


class MyApp extends StatelessWidget {
  // var currentPage=DrawerSections.values;
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 640),

      builder: (BuildContext context, Widget? child) {
        return MaterialApp(

          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          // home: MainScreen(),

          initialRoute: '/SplashScreen',
          routes:{
            '/SplashScreen':(context)=>SplashScreen(),
            '/LoginScreen':(context)=>LoginSecreen(),
            '/RegisterScreen':(context)=>RegisterScreen(),
            '/ForgetPassword':(context)=>ForgetPassword(),
            '/WelcomeScreens':(context)=>WelcomeScreens(),
            '/MainScreen':(context)=>MainScreen(),
            '/GeneralScreen':(context)=>GeneralScreen(),
            '/MadaniaScreen':(context)=>MadaniaScreen(),
            '/AskarScreen':(context)=>AskarScreen(),
            '/CompanyScreen':(context)=>CompanyScreen(),
            '/SettingAbk':(context)=>SettingAbk(),
            '/ResultScreen':(context)=>ResultScreen(),


          },
        );
      },
    );
  }
}

