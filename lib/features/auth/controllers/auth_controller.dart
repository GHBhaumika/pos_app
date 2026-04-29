import 'package:firebase_auth/firebase_auth.dart';
import '../../../data/repositories/auth_repository.dart';

class AuthController {
  final AuthRepository _repo = AuthRepository();

  Future signIn(String email, String password) async {
    try {
      await _repo.signIn(email, password);
      return true;
    }on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          return "No account found with this email";
        case 'wrong-password':
          return "Incorrect password";
        case 'invalid-email':
          return "Invalid email address";
        case 'invalid-credential':
          return "Invalid email or password";
        default:
          return "Login failed. Please try again";
      }
    } catch (e) {
      return "Something went wrong";
    }
  }

  Future signUp(String email, String password) async {
    try {
      await _repo.signUp(email, password);
      return true;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          return "Email already registered";
        case 'weak-password':
          return "Password is too weak";
        default:
          return "Signup failed";
      }
    }
  }
}