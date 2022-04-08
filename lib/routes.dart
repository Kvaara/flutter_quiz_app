import 'package:flutter_quiz_app/about/about.dart';
import 'package:flutter_quiz_app/home/home.dart';
import 'package:flutter_quiz_app/login/login.dart';
import 'package:flutter_quiz_app/profile/profile.dart';
import 'package:flutter_quiz_app/topics/topics.dart';

var appRoutes = {
  "/": (_) => const Home(),
  "/home": (_) => const Home(),
  "/login": (_) => const Login(),
  "/profile": (_) => const Profile(),
  "/topics": (_) => const Topics(),
};
