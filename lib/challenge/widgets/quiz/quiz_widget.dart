import 'package:DevQuiz/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  QuizWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          AnswerWidget(
            title:
                "Resposta 01 da questão 01 - testando o Expanded para ver se quebra a linha corretamente",
          ),
          AnswerWidget(
            title:
                "Resposta 01 da questão 01 - testando o Expanded para ver se quebra a linha corretamente",
            isRight: false,
            isSelected: true,
          ),
          AnswerWidget(
            title:
                "Resposta 01 da questão 01 - testando o Expanded para ver se quebra a linha corretamente",
          ),
          AnswerWidget(
            title:
                "Resposta 01 da questão 01 - testando o Expanded para ver se quebra a linha corretamente",
          ),
        ],
      ),
    );
  }
}
