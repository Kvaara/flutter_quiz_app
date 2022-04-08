import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/services/auth.dart';
import 'package:flutter_quiz_app/shared/bottom_nav_bar.dart';
import 'package:flutter_quiz_app/topics/topics.dart';

import '../login/login.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   bottomNavigationBar: const BottomNavBar(),
    //   body: Column(),
    // );
    return StreamBuilder(
      stream: Auth.userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading...");
        } else if (snapshot.hasError) {
          return const Text("Something unexpected happened...");
        } else if (snapshot.hasData) {
          return const Topics();
        } else {
          return const Login();
        }
      },
    );
  }
}
