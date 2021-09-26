import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth;
  AuthService(this._auth);
  Stream<User?> get authStateChanges => _auth.authStateChanges();
  Future<String?> signIn(
      {required String email, required String passwd}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: passwd);
      return "signed in";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> signUp(
      {required String email, required String passwd}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: passwd);
      return "signed up";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
