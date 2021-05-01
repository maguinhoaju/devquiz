import 'package:DevQuiz/shared/models/answer_model.dart';

class QuestionModel {
  final String title;
  final List<AnswerModel> answer;

  QuestionModel({
    required this.title,
    required this.answer,
  }) : assert(
          answer.length == 4,
        ); //a lista de answers deve ter 4 itens obrigatoriamente
}
