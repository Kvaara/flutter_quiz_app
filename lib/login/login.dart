import 'package:flutter/material.dart';

import '../services/auth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const FlutterLogo(
              size: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Align(
                  child: Text(
                    "Or continue with:",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                LoginButton(
                  icon: Icons.login,
                  text: 'Google',
                  onPressed: Auth.anonLogin,
                  color: Colors.deepPurple,
                ),
                LoginButton(
                  icon: Icons.apple,
                  text: 'Apple',
                  onPressed: Auth.anonLogin,
                  color: Colors.deepPurple,
                ),
                Align(
                  child: Text(
                    "Just exploring?",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                LoginButton(
                  icon: Icons.question_mark,
                  text: 'Continue as a Guest',
                  onPressed: Auth.anonLogin,
                  color: Colors.deepPurple,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final Function onPressed;

  const LoginButton(
      {Key? key,
      required this.text,
      required this.icon,
      required this.color,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
          color: Colors.white,
          size: 25,
        ),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(18),
          backgroundColor: color,
        ),
        onPressed: () => onPressed(),
        label: Text(text, textAlign: TextAlign.center),
      ),
    );
  }
}
