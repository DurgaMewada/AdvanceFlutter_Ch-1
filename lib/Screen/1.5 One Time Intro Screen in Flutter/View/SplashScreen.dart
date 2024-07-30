import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushNamed('/screen');
    });
    double height  =MediaQuery.of(context).size.height;
    double width  =MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height*1,
        width: width*1,
       child: Lottie.asset('assets/JsonAnimation/Animation.json'),
      ),
    );
  }
}
