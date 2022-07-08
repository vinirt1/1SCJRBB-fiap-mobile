import 'package:firebase_auth/firebase_auth.dart';

abstract class RegisterWithEmail {
  Future<String> execute(String email, String password);
}
