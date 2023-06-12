import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  get player => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: const Text('Let\'s Start',
            selectionColor: Colors.blueGrey,
            style: TextStyle(
              color: Colors.blueGrey,
            ),
            textAlign: TextAlign.center),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/image3.png',
              height: 200,
              width: 200,
            ),
            const SizedBox(height: 50),
            const Text(
              "Enter player name",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.tealAccent,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                decoration:InputDecoration(
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  label: Text("Enter Name",
                  style:TextStyle(
                    color: Colors.white,
                  ))
                  
                ),
                
                
                
                style: const TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/quiz');
                Colors.teal;
              },
              child: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
