import 'package:flutter/material.dart';
import 'quiz.dart';
import 'sccreScreen.dart';
import 'QuestionQ.dart';

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  Quiz quiz = Quiz();
  int currentQuestionIndex = 0;
  int score = 0;

  void answerQuestion(bool answer) {
    if (answer == quiz.questions[currentQuestionIndex].answer) {
      setState(() {
        score++;
      });
    }

    if (currentQuestionIndex < quiz.questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ScoreScreen(score: score),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    QuestionQ currentQuestion = quiz.questions[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Question ${currentQuestionIndex + 1}:',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 16.0),
            Text(
              currentQuestion.question,
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => answerQuestion(true),
              child: Text('True'),
            ),
            ElevatedButton(
              onPressed: () => answerQuestion(false),
              child: Text('False'),
            ),
          ],
        ),
      ),
    );
  }
}
