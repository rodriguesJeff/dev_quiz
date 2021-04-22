import 'dart:convert';

import 'package:dev_quiz/shared/model/answer_model.dart';

class QuestionModel {
  final String title;
  final List<AnswerModel> answers;

  QuestionModel({this.title, this.answers}) : assert(answers.length == 4);

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'answers': answers.map((e) => e.toMap()).toList()
    };
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map){
    return QuestionModel(
      title: map['title'],
      answers: List<AnswerModel>.from(
        map['answers'].map((a) => AnswerModel.fromMap(a))
      )
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionModel.fromJson(String source) => QuestionModel.fromMap(json.decode(source));
}