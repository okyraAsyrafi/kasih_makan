import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kasih_makan/style.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, '/login'));
  }

  Widget splash() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("images/splash.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Image.asset(
            "images/logo.png",
            width: 150,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 26),
            child: Text(
              "Biar Kenyang",
              style: textIPutih.copyWith(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: splash(),
    );
  }
}
