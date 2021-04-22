import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/shared/model/answer_model.dart';
import 'package:dev_quiz/shared/model/question_model.dart';
import 'package:dev_quiz/shared/model/quiz_model.dart';
import 'package:dev_quiz/shared/model/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  ValueNotifier<HomeState> stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;
  UserModel user;
  List<QuizModel> quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(name: 'Jeff', photoUrl: "https://avatars.githubusercontent.com/u/32440959?v=4");
    state = HomeState.succes;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
          image: AppImages.blocks,
          level: Level.facil,
          questionAnswered: 0,
          title: 'NLW 5 Flutter', questions : [
        QuestionModel(title: 'Está curtindo o flutter', answers: [
          AnswerModel(title: 'Estou curtindo'),
          AnswerModel(title: 'Não estou curtindo'),
          AnswerModel(title: 'Estou adorando'),
          AnswerModel(title: 'Show de bola', isRight: true)
        ]),
        QuestionModel(title: 'Está curtindo o flutter', answers: [
          AnswerModel(title: 'Estou curtindo'),
          AnswerModel(title: 'Não estou curtindo'),
          AnswerModel(title: 'Estou adorando'),
          AnswerModel(title: 'Show de bola', isRight: true)
        ])
      ])
    ];
    state = HomeState.succes;
  }
}