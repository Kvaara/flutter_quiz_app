import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/shared/bottom_nav_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Column(),
    );
  }
}
