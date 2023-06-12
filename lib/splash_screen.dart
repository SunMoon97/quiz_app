import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/animations/animation.json',
              height: 500,
              width: 500,
            ),
            const SizedBox(height: 20),
            const Text(
              'Be Ready',
              style: TextStyle(
                color: Colors.tealAccent,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
