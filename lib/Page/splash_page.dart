import 'dart:async';

import 'package:flutter/material.dart';

import '../theme/theme.dart';
import 'sigin_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, callback);
  }

  callback() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SignPage(),
        ));
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        color: colorWhite,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: edge,
            ),
            child: Center(
              child: imageLogo,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    ));
  }
}
