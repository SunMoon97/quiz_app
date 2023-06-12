import 'package:flutter/material.dart';
class ResultScreen extends StatelessWidget {
  final List<Question> questions = [
    Question(
      ' 1. Which animal is known as the Ship of the Desert?',
      'Camel',
      ['Camel', 'Lion', 'Deer', 'Mongoose'],
    ),
    Question(
      ' 2: Baby frog is known as.......',
      'Tadpole',
      ['Tadpole', 'frog', 'calf', 'poletad'],
    ),
    Question(
      ' 3: Name the galaxy in which we live?',
      'Milky Way',
      ['Samsung Galaxy', 'Milky Way', 'PinWheel', 'WhirlPool'],
    ),
    Question(
      ' 4: Name the National tree of India?',
      'Banyan',
      ['Mango', 'Apple', 'Banyan', 'lotus'],
    ),
    Question(
      ' 5: Name the largest mammal?',
      'Blue Whale',
      ['Tadpole', 'Blue Whale', 'elephant', 'ant'],
    ),
    Question(
      ' 6:Sun rises in the.....',
      'east',
      ['north', 'south', 'east', 'west'],
    ),
    Question(
      ' 7:  Name the largest planet of our Solar System?',
      'None of These',
      ['earth', 'pluto', 'saturn', 'None of these'],
    ),
  ];
  final List<String> userAnswers;

  ResultScreen({required this.userAnswers});

  int calculateScore() {
    int score = 0;
    for (int i = 0; i < questions.length; i++) {
      if (userAnswers[i].toLowerCase() == questions[i].answer.toLowerCase()) {
        score++;
      }
    }
    return score;
  }

  @override
  Widget build(BuildContext context) {
    int score = calculateScore();

    return Scaffold(
      backgroundColor: Colors.blueGrey[900],

      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text('Result',style: TextStyle(color: Colors.blueGrey,)),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Image.asset(
              'assets/images/image2.png',
              height: 200,
              width: 200,
            ),
            SizedBox(height: 20,),
              Text(
                'Quiz Completed!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Your Score: $score/${questions.length}',
                style: TextStyle(
                  color: Colors.tealAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Restart',),
              ),
            ], 
          ),
        ),
      ),
    );
  }
}
class Question {
  final String question;
  final String answer;
  final List<String> options;

  Question(this.question, this.answer, this.options);
}