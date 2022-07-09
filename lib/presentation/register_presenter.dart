import 'package:flutter_application_1/domain/usecases/auth/login_with_email.dart';
import 'package:flutter_application_1/domain/usecases/auth/register_with_email.dart';
import 'package:flutter_application_1/ui/login/login_screen.dart';
import 'package:get/get.dart';

class RegisterPresenter extends GetxController {
  RegisterPresenter({
    required this.loginWithEmail,
    required this.registerWithEmail,
  });

  LoginWithEmail loginWithEmail;
  RegisterWithEmail registerWithEmail;

  var userEmail = '';
  var userPassword = '';
  var userConfirmPassword = '';

  void onUserEmailUpdate(String email) {
    userEmail = email;
  }

  void onPasswordUpdate(String password) {
    userPassword = password;
  }

  void onConfirmPasswordUpdate(String confirmPassword) {
    userConfirmPassword = confirmPassword;
  }

  void onRegisterButtonPressed() async {
    /* var user = await loginWithEmail.execute(userEmail, userPassword);
    user ??= await registerWithEmail.execute(userEmail, userPassword);
    if (user == null) {
      // show error message
      print("nao autenticado");
    } else {
      Get.offNamed(LoginScreen.id);
    } */

    Get.offNamed(LoginScreen.id);
  }
}
