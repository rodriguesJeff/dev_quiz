import 'package:dev_quiz/challenge/widgets/answer/answer_widget.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  QuizWidget({Key, key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24,),
          AnswerWidget(
            title: 'Possibilita a criação de Apps compilados',
          ),
          AnswerWidget(
            title: 'Possibilita a criação de Apps compilados',
            isSelected: true,
            isRight: false,
          ),
          AnswerWidget(
            title: 'Possibilita a criação de Apps compilados',
          ),
          AnswerWidget(
            title: 'Possibilita a criação de Apps compilados',
          ),
        ],
      ),
    );
  }
}
