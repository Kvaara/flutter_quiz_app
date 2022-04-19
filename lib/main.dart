import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/models/report.dart';
import 'package:flutter_quiz_app/services/firestore.dart';
import 'package:flutter_quiz_app/theme.dart';
import 'package:provider/provider.dart';

import 'home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Provider package has the StreamProvider, which we can use to make a Stream globally usable inside every widget.
    return StreamProvider(
      create: (_) => Firestore().streamReport(),
      initialData: Report(),
      child: MaterialApp(
        title: 'Quizler',
        theme: AppTheme.lightTheme(context),
        // routes: appRoutes,
        home: const Home(),
      ),
    );
  }
}
