import 'package:DevQuiz/home/home_repository.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final ValueNotifier<HomeState> stateNotifier =
      ValueNotifier<HomeState>(HomeState.empty);

  HomeState get state => stateNotifier.value;
  set state(HomeState state) => stateNotifier.value = state;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void fetchData() async {
    state = HomeState.loading;
    user = await repository.getUser();
    quizzes = await repository.getQuizzes();
    state = HomeState.success;
  }
}
