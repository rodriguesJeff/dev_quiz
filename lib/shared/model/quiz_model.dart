import 'dart:convert';

import 'package:dev_quiz/shared/model/question_model.dart';

enum Level{facil, medio, dificil, perito}

extension LevelStringExt on String {
  Level get levelParse => {
    "facil": Level.facil,
    "medio": Level.medio,
    "dificil": Level.dificil,
    "perito": Level.perito
  }[this];
}

extension LevelgExt on Level {
  String get parse => {
    Level.facil : "facil",
    Level.medio: "medio",
    Level.dificil: "dificil",
    Level.perito: "perito"
  }[this];
}

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionAnswered;
  final String image;
  final Level level;

  QuizModel({this.title, this.questions, this.questionAnswered = 0, this.image, this.level});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'questions': questions.map((e) => e.toMap()).toList(),
      'questionsAnswered': questionAnswered,
      'image': image,
      'level': level.parse
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map){
    return QuizModel(
      title: map['title'],
      questions: List<QuestionModel>.from(
        map['questions'].map((m) => QuestionModel.fromMap(m))
      ),
      questionAnswered: map['questionAnswered'],
      image: map['image'],
      level: map['level'].toString().levelParse,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) => QuizModel.fromMap(json.decode(source));
}