import 'package:dev_quiz/core/app_gradients.dart';
import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/home/widgets/score_card/score_card_widget.dart';
import 'package:dev_quiz/shared/model/user_model.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
 AppBarWidget(this.user) : super(
   preferredSize: Size.fromHeight(250), child: Container(
   height: 250,
   child: Stack(
       children: [
         Container(
           decoration: BoxDecoration(
             gradient: AppGradients.linear,
           ),
           height: 161,
           width: double.maxFinite,
           padding: EdgeInsets.symmetric(horizontal: 20.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text.rich(
                   TextSpan(
                       children: [
                         TextSpan(text: 'Olá, ', style: AppTextStyles.title),
                         TextSpan(text: user.name, style: AppTextStyles.titleBold),
                       ]
                   ),
                 ),
                 Container(
                   width: 58,
                   height: 58,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     image: DecorationImage(image: NetworkImage(user.photoUrl),),
                   ),
                 ),
               ],
             ),
           ),
         Align(
           alignment: Alignment(0.0, 1.0),
             child: ScoreCardWidget()
         ),
       ],
     ),
   ),
 );
}
