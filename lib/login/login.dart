import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../services/auth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
              children: [
                Align(
                  child: Text(
                    "Or continue with:",
                    style: theme.textTheme.headline1,
                  ),
                  alignment: Alignment.centerLeft,
                ),
                const ElevatedLoginButton(
                  icon: FontAwesomeIcons.google,
                  text: 'Google',
                  onPressed: Auth.googleLogin,
                  color: Colors.black45,
                ),
                const ElevatedLoginButton(
                  icon: FontAwesomeIcons.apple,
                  text: 'Apple',
                  onPressed: Auth.guestLogin,
                  color: Colors.black45,
                  // color: Colors.deepPurple,
                ),
                Align(
                  child: Text(
                    "Just exploring?",
                    style: theme.textTheme.headline1,
                  ),
                  alignment: Alignment.centerLeft,
                ),
                const OutlinedLoginButton(
                  icon: FontAwesomeIcons.personCircleQuestion,
                  text: 'Continue as a Guest',
                  onPressed: Auth.guestLogin,
                  isRounded: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ElevatedLoginButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final Function onPressed;
  final bool isRounded;

  const ElevatedLoginButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
    required this.onPressed,
    this.isRounded = true,
  }) : super(key: key);

  get isBackgroundWhite {
    return color == Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
          color: isBackgroundWhite ? Colors.black87 : Colors.white,
          size: 25,
        ),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(18),
          backgroundColor: color,
          shape: isRounded
              ? RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(999),
                )
              : RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
        ),
        onPressed: () => onPressed(),
        label: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isBackgroundWhite ? Colors.black87 : Colors.white,
          ),
        ),
      ),
    );
  }
}

class OutlinedLoginButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onPressed;
  final bool isRounded;

  const OutlinedLoginButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.onPressed,
    this.isRounded = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: OutlinedButton.icon(
        icon: Icon(
          icon,
          color: Colors.white,
          size: 25,
        ),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(18),
          shape: isRounded
              ? RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(999),
                )
              : RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
        ),
        onPressed: () => onPressed(),
        label: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
