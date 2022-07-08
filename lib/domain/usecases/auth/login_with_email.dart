import 'package:firebase_auth/firebase_auth.dart';

abstract class LoginWithEmail {
  Future<String> execute(String email, String password);
}
