import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz/quiz_state.dart';
import 'package:flutter_quiz_app/shared/loading_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../services/firestore.dart';
import '../shared/progress_bar.dart';

class Quiz extends StatelessWidget {
  final String quizId;
  const Quiz({
    Key? key,
    required this.quizId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => QuizState(),
      child: FutureBuilder<Quiz>(
        future: Firestore.fetchQuiz(quizId),
        builder: (context, snapshot) {
          var state = Provider.of<QuizState>(context);

          if (!snapshot.hasData || snapshot.hasError) {
            return const LoadingIndicator();
          } else {
            var quiz = snapshot.data!;

            return Scaffold(
              appBar: AppBar(
                title: AnimatedProgressbar(value: state.progress),
                leading: IconButton(
                  icon: const Icon(FontAwesomeIcons.xmark),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              body: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                controller: state.controller,
                onPageChanged: (int idx) =>
                    state.progress = (idx / (quiz.questions.length + 1)),
                itemBuilder: (BuildContext context, int idx) {
                  if (idx == 0) {
                    return StartPage(quiz: quiz);
                  } else if (idx == quiz.questions.length + 1) {
                    return CongratsPage(quiz: quiz);
                  } else {
                    return QuestionPage(question: quiz.questions[idx - 1]);
                  }
                },
              ),
            );
          }
        },
      ),
    );
  }
}
