import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sample/config/config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, Routes.landing);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
