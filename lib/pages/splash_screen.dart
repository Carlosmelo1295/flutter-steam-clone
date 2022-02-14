// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:steam_clone_ui/pages/login/login_page.dart';
import 'package:steam_clone_ui/shared/color_pallet.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      (() => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const Login(),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AplicationColors.backgroundColor,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Image(
          width: 150,
          image: AssetImage('./assets/images/steam.png'),
        ),
      ),
    );
  }
}
