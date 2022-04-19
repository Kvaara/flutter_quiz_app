import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth {
  static final Auth _singleton = Auth._privateConstr();
  static final userStream = FirebaseAuth.instance.authStateChanges();
  static final user = FirebaseAuth.instance.currentUser;

  Auth._privateConstr();

  factory Auth() {
    return _singleton;
  }

  static Future<void> guestLogin() async {
    try {
      await FirebaseAuth.instance.signInAnonymously();
    } catch (err) {
      print("Something unexpected happened: ");
      print(err);
    }
  }

  static Future<void> googleLogin() async {
    try {
      final user = await GoogleSignIn().signIn();
      if (user != null) {
        final googleAuth = await user.authentication;
        final userAuthCredential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        await FirebaseAuth.instance.signInWithCredential(userAuthCredential);
      }
    } catch (err) {
      print("Something unexpected happened: ");
      print(err);
    }
  }

  static Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
