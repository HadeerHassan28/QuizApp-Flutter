import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  final int score;

  ScoreScreen({required this.score});

  @override
  Widget build(BuildContext context) {
    String message = score > 3 ? 'Success!' : 'Failed!';

    return Scaffold(
      appBar: AppBar(
        title: Text('Score'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Score: $score',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            Text(
              message,
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}
