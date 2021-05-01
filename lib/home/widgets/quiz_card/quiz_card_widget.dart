import 'package:DevQuiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/app_text_styles.dart';
import '../../../core/core.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final int totalAnsweredQuestions;
  final int totalQuestions;
  final String image;
  const QuizCardWidget(
      {Key? key,
      required this.title,
      this.totalAnsweredQuestions = 0,
      required this.totalQuestions,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset(this.image),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            this.title,
            style: AppTextStyles.heading15,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  "${this.totalAnsweredQuestions} / ${this.totalQuestions}",
                  style: AppTextStyles.body11,
                ),
              ),
              Expanded(
                flex: 2,
                child: ProgressIndicatorWidget(
                  value: this.totalAnsweredQuestions / this.totalQuestions,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
