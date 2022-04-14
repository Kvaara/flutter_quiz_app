import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter_quiz_app/models/quiz.dart';
import 'package:flutter_quiz_app/models/report.dart';
import 'package:flutter_quiz_app/models/topic.dart';
import 'package:flutter_quiz_app/services/auth.dart';
import 'package:rxdart/rxdart.dart';

class Firestore {
  final _firestoreDB = FirebaseFirestore.instance;

  Future<List<Topic>> fetchTopics() async {
    final ref = _firestoreDB.collection("topics");
    final topicsSnapshot = await ref.get();
    final everyTopicJSON = topicsSnapshot.docs.map((topic) => topic.data());
    final topics =
        everyTopicJSON.map((topicJSON) => Topic.fromJson(topicJSON)).toList();
    return topics;
  }

  Future<Quiz> fetchQuiz(String quizID) async {
    final ref = _firestoreDB.collection("quizzes");
    final quizSnapshot = await ref.doc(quizID).get();
    final quizJSON = quizSnapshot.data() ?? {};
    final quiz = Quiz.fromJson(quizJSON);
    return quiz;
  }

  Stream<Report> streamReport() {
    return Auth.userStream.switchMap((user) {
      if (user != null) {
        final ref = _firestoreDB.collection("reports");
        final userReportsStream = ref.doc(user.uid).snapshots();
        return userReportsStream
            .map((reportJSON) => Report.fromJson(reportJSON.data() ?? {}));
      }
      print(
          "User is not logged in... Report Stream consists of only mockup Reports");
      return Stream.fromIterable([Report()]);
    });
  }

  Future<void> updateUserReport(Quiz quiz) async {
    final user = await Auth.userStream.first;
    if (user != null) {
      final ref = _firestoreDB.collection("reports");
      final userReport = ref.doc(user.uid);

      final data = {
        "totals": FieldValue.increment(1),
        "topics": {
          quiz.topic: FieldValue.arrayUnion([quiz.id])
        }
      };

      return userReport.set(data, SetOptions(merge: true));
    }
  }
}
