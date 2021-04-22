import 'dart:convert';

import 'package:dev_quiz/shared/model/quiz_model.dart';
import 'package:dev_quiz/shared/model/user_model.dart';
import 'package:flutter/services.dart';

class HomeRepository{
  Future<UserModel> getUsers() async {
    final response = await rootBundle.loadString("assets/database/user.json");
    final user = UserModel.fromJson(response);
    return user;
  }
  Future<List<QuizModel>> getQuizzes() async {
    final response = await rootBundle.loadString("assets/database/quizzes.json");
    final list = json.decode(response) as List;
    final quizzes = list.map((e) => QuizModel.fromMap(e)).toList();
    return quizzes;
  }
}