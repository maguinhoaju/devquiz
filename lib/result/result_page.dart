import 'package:DevQuiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/home/home_page.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Parabéns!",
              style: AppTextStyles.heading40,
            ),
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                  text: "Você concluiu",
                  style: AppTextStyles.body,
                  children: [
                    TextSpan(
                        text: "\n\nGerenciamento de Estado",
                        style: AppTextStyles.bodyBold),
                    TextSpan(
                        text: "\n\nom 6 de 10 acertos.",
                        style: AppTextStyles.body),
                  ]),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 26,
            ),
            SafeArea(
              bottom: true,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: NextButtonWidget.green(
                        label: "Voltar",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
