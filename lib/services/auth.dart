import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  static final Auth _singleton = Auth._privateConstr();

  Auth._privateConstr();

  factory Auth() {
    return _singleton;
  }
  static final userStream = FirebaseAuth.instance.authStateChanges();

  static Future<void> anonLogin() async {
    try {
      await FirebaseAuth.instance.signInAnonymously();
    } catch (e) {}
  }

  static Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
