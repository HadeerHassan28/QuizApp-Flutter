import 'QuestionQ.dart';

class Quiz {
  late List<QuestionQ> questions;

  Quiz() {
    questions = [
      QuestionQ('Walt Disney holds the record for the most Oscars ', true),
      QuestionQ('Cinderella was the first Disney princess?', false),
      QuestionQ('Sean Connery wore a toupee in every James Bond movie?', true),
      QuestionQ(
          'The Titanic ship cost more to build than the move cost to make?',
          false),
      QuestionQ(
          '10,297 balloons were used in the floating sequences for the movie Up ?',
          true),
    ];
  }
}
