import 'package:DevQuiz/shared/models/question_model.dart';

enum Level { facil, medio, dificil, perito }

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int answeredQuestions;
  final String image;
  final Level level;

  QuizModel({
    required this.title,
    required this.questions,
    this.answeredQuestions = 0,
    required this.image,
    required this.level,
  });
}
