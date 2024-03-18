import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hotalbookingapp/core/constants/my_string.dart';
import 'package:hotalbookingapp/core/themes/app_theme.dart';

import 'presentation/screen/home/home_screen_imports.dart';
import 'presentation/screen/home/MainScreen.dart';

void main() {

//status bar
SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: MyString.appname,
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      // theme: ThemeData(
   
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      
   home: const BottomNavigationBarExample(),
    );
  }
}

