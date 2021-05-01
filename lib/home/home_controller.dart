import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;
  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: "Little Wizard",
      photoUrl: "https://avatars.githubusercontent.com/u/32390057?v=4",
    );
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        image: AppImages.blocks,
        answeredQuestions: 1,
        level: Level.facil,
        questions: [
          QuestionModel(
            title: "Está curtindo o FLutter?",
            answers: [
              AnswerModel(title: "Não gostei"),
              AnswerModel(title: "Estou curtindo", isRight: true),
              AnswerModel(title: "Muito difícil"),
              AnswerModel(title: "Estou odiando"),
            ],
          ),
          QuestionModel(
            title: "O que você mais gostou no Flutter?",
            answers: [
              AnswerModel(title: "Não gostei"),
              AnswerModel(title: "Quem disse que gostei?"),
              AnswerModel(title: "Gosto mais do C#"),
              AnswerModel(
                title:
                    "Ainda estou aprendendo. Deixa eu terminar o curso e te digo",
                isRight: true,
              ),
            ],
          ),
        ],
      ),
      QuizModel(
        title: "NLW 5 Dart",
        image: AppImages.hierarchy,
        level: Level.medio,
        questions: [
          QuestionModel(
            title: "Está curtindo o Dart?",
            answers: [
              AnswerModel(title: "Não gostei"),
              AnswerModel(title: "Estou curtindo", isRight: true),
              AnswerModel(title: "Muito difícil"),
              AnswerModel(title: "Estou odiando"),
            ],
          ),
        ],
      ),
    ];
  }
}
