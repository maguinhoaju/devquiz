import 'dart:convert';

import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/services.dart';

class HomeRepository {
  Future<UserModel> getUser() async {
    final response = await rootBundle.loadString("assets/database/user.json");
    return UserModel.fromJson(response);
  }

  Future<List<QuizModel>> getQuizzes() async {
    List<QuizModel> quizzes = [];
    try {
      final response =
          await rootBundle.loadString("assets/database/quizzes.json");
      final list = jsonDecode(response) as List;
      quizzes = list.map((e) => QuizModel.fromMap(e)).toList();
    } on Exception catch (e) {
      print(e);
    }
    return quizzes;
  }
}
