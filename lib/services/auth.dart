import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  static final Auth _singleton = Auth._privateConstr();

  Auth._privateConstr();

  factory Auth() {
    return _singleton;
  }

  final userStream = FirebaseAuth.instance.authStateChanges();
}
