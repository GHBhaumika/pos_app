import '../../core/services/firebase_service.dart';

class AuthRepository {
  //firebase initialization
  final FirebaseService _firebaseService = FirebaseService();

  //sign up
  Future signUp(String email, String password) {
    return _firebaseService.signUp(email, password);
  }

  //sign in
  Future signIn(String email, String password) {
    return _firebaseService.signIn(email, password);
  }

  //sign out
  Future signOut() {
    return _firebaseService.signOut();
  }
}
