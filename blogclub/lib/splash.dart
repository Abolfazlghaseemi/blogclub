import 'package:blogclub/gen/assets.gen.dart';
import 'package:blogclub/onboarding.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds:2)).then((value){
    Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder:(context)=>
    OnBoardingScreen(),));
  });
    super.initState();
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned.fill(
              child: Assets.img.background.splash.image(fit: BoxFit.fill)),
          Center(
            child: Assets.img.icons.logo.svg(width: 160),
          ),
        ],
      )),
    ));
  }
}
