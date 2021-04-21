import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Questão 04',
          ),
          Text(
            'de 10',
          ),
        ],
      ),
    );
  }
}
