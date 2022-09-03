import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'OnBoardingScreen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Boarding()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Image.asset('assets/splash_screen.png')));
  }
}
