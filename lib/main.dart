import 'package:flutter/material.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/quiz_screen.dart';
import 'package:quiz_app/result_sreen.dart';
import 'package:quiz_app/splash_screen.dart';

//import 'package:flutter_map/flutter_map.dart';
//import 'package:latlong/latlong.dart';

void main() {
  runApp( QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
       // '/': (context) => SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/': (context) => SplashScreen(),
        '/quiz': (context) => QuizScreen(),
      },
      
      onGenerateRoute: (settings) {
        if (settings.name == '/result') {
          final List<String> userAnswers = settings.arguments as List<String>;
          return MaterialPageRoute(
            builder: (context) => ResultScreen(userAnswers: userAnswers),
          );
        }
        return null;
      },
    );
  }
}


/*class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/quiz': (context) => QuizScreen(),
        '/results': (context) => ResultScreen(userAnswers: [],),
      },
    );
  }
}
*/