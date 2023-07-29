import 'package:flutter/material.dart';

import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

// ignore: use_key_in_widget_constructors
class QuestionsScreen extends StatefulWidget {
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  answerQuestion() {
    // currentQuestionIndex = currentQuestionIndex + 1;
    // currentQuestionIndex += 1;
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              //shuffle step2 - add getShuffledAnswers()
              return AnswerButton(
                answerText: answer,
                onTap: answerQuestion,
              );
            }),
            // AnswerButton(
            //   answerText: currentQuestion.answers[0],
            //   onTap: () {}
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[1],
            //   onTap: () {}
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[2],
            //   onTap: () {}
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[3],
            //   onTap: () {}
            // ),
          ],
        ),
      ),
    );
  }
}
