import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




import 'myApp.dart';

main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(

   EasyLocalization(
        supportedLocales: [Locale('ar')],
        path: 'assets/lang',
        fallbackLocale: Locale('ar'),
        child: MyApp()
    ),
  );
}
