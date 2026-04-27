import '../../core/services/firebase_service.dart';

class AuthRepository {
  final FirebaseService _firebaseService = FirebaseService();

  Future signUp(String email, String password) {
    return _firebaseService.signUp(email, password);
  }

  Future signIn(String email, String password) {
    return _firebaseService.signIn(email, password);
  }

  Future signOut() {
    return _firebaseService.signOut();
  }
}
