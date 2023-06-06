import 'QuestionQ.dart';

class Quiz {
  late List<QuestionQ> questions;

  Quiz() {
    questions = [
      QuestionQ('Snigle ?', true),
      QuestionQ('Inrelationship?', false),
      QuestionQ('like travel?', true),
      QuestionQ('like action movies?', false),
      QuestionQ('Love', true),
    ];
  }
}
