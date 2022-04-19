import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/shared/loading_indicator.dart';
import 'package:provider/provider.dart';

import '../models/report.dart';
import '../services/auth.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var report = Provider.of<Report>(context);
    var user = Auth.user;

    if (user != null) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(user.displayName ?? 'Anonymous'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(user.photoURL ??
                        'https://www.gravatar.com/avatar/placeholder'),
                  ),
                ),
              ),
              Text(user.email ?? '',
                  style: Theme.of(context).textTheme.headline6),
              const Spacer(),
              Text('${report.total}',
                  style: Theme.of(context).textTheme.headline2),
              Text('Quizzes Finished',
                  style: Theme.of(context).textTheme.subtitle2),
              const Spacer(),
              ElevatedButton(
                child: const Text('Sign Out'),
                onPressed: () async {
                  await Auth.signOut();
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/', (route) => false);
                },
              ),
              const Spacer(),
            ],
          ),
        ),
      );
    } else {
      return const LoadingIndicator();
    }
  }
}
