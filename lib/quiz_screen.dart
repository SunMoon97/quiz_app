import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentIndex = 0;
  List<Question> questions = [
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
  List<String> answers = [];
  String? selectedOption;
  bool showFeedback = false;

  void selectAnswer(String answer) {
    setState(() {
      selectedOption = answer;
    });
  }

 void submitAnswer() {
  setState(() {
    answers.add(selectedOption ?? '');
    selectedOption = null;
    showFeedback = true;
    if (currentIndex < questions.length - 1) {
      currentIndex++;
    } else {
      Navigator.pushReplacementNamed(
        context,
        '/result',
        arguments: answers.isNotEmpty ? List<String>.from(answers) : null,
      );
    }
  });
}


  @override
  Widget build(BuildContext context) {
    Question currentQuestion = questions[currentIndex];

    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text('Quiz',
        
        style: TextStyle(color: Colors.blueGrey,),
        )),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.question,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16.0),
            Column(
              children: currentQuestion.options.map((option) {
                return RadioListTile(
                  
                  title: Text(option,style:TextStyle(color: Colors.tealAccent),
                  ),
                  activeColor: Colors.tealAccent,
                  hoverColor: Colors.tealAccent,
                  value: option,
                  groupValue: selectedOption,
                  onChanged: (value) => selectAnswer(value.toString()),
                );
              }).toList(),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: submitAnswer,
              child: Text('Submit'),
            ),
            SizedBox(height: 16.0),
           
          ],
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