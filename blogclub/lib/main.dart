// ignore_for_file: unused_import
import 'package:blogclub/article.dart';
import 'package:blogclub/gen/fonts.gen.dart';
import 'package:blogclub/home.dart';
import 'package:blogclub/profile.dart';
import 'package:blogclub/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //     statusBarColor: Colors.white,
  //     statusBarIconBrightness: Brightness.dark,
  //     systemNavigationBarColor: Colors.white,
  //     systemNavigationBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const primaryTextColor = Color(0xff0D253C);
    const secondaryTextColor = Color(0xff2D4379);
    const primaryColor = Color(0xff376AED);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
                textStyle: MaterialStateProperty.all(const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.avenir,
        )))),
        colorScheme: const ColorScheme.light(
            primary: primaryColor,
            onPrimary: Colors.white,
            onSurface: primaryTextColor,
            background: Color(0xffFBFCFF),
            surface: Colors.white,
            onBackground: primaryTextColor),
        snackBarTheme: const SnackBarThemeData(backgroundColor: primaryColor),
        textTheme: const TextTheme(
            subtitle1: TextStyle(
                fontFamily: FontFamily.avenir,
                color: secondaryTextColor,
                fontWeight: FontWeight.w200,
                fontSize: 16),
            headline6: TextStyle(
                fontFamily: FontFamily.avenir,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: primaryTextColor),
            headline4: TextStyle(
                fontFamily: FontFamily.avenir,
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: primaryTextColor),
            headline5: TextStyle(
                fontFamily: FontFamily.avenir,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: primaryTextColor),
            caption: TextStyle(
                fontFamily: FontFamily.avenir,
                fontWeight: FontWeight.w700,
                color: Color(0xff7B8BB2),
                fontSize: 10),
            subtitle2: TextStyle(
                fontFamily: FontFamily.avenir,
                color: primaryTextColor,
                fontWeight: FontWeight.w400,
                fontSize: 14),
            bodyText2: TextStyle(
                fontFamily: FontFamily.avenir,
                color: secondaryTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w500)),
      ),
      // home: Stack(
      //   children: [
      //     const Positioned.fill(bottom: 65, child: HomeScreen()),
      //     Positioned(bottom: 0, right: 0, left: 0, child: _BottomNavigation())
      //   ],
      // ),
      home: const ProfileScreen(),
    );
  }
}
