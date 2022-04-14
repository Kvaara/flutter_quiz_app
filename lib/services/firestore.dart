import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_quiz_app/models/quiz.dart';
import 'package:flutter_quiz_app/models/topic.dart';

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
}
