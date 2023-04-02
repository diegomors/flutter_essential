import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_essential/my_home_page.dart';
import 'package:rive/rive.dart';

class MySplashPage extends StatefulWidget {
  const MySplashPage({super.key});

  @override
  State<MySplashPage> createState() => _MySplashPageState();
}

class _MySplashPageState extends State<MySplashPage> {
  @override
  void initState() {
    super.initState();
    
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const MyHomePage(title: 'Flutter Demo Home Page'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF88DCF4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 285, maxHeight: 285),
            child: const RiveAnimation.asset('assets/animations/dash.riv'),
          ),
        ],
      ),
    );
  }
}
