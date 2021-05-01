import 'package:DevQuiz/shared/models/answer_model.dart';

class QuestionModel {
  final String title;
  final List<AnswerModel> answers;

  QuestionModel({
    required this.title,
    required this.answers,
  }) : assert(
          answers.length == 4,
        ); //a lista de answers deve ter 4 itens obrigatoriamente
}
