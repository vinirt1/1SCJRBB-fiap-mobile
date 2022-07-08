import 'package:flutter_application_1/domain/usecases/auth/login_with_email.dart';
import 'package:flutter_application_1/domain/usecases/auth/register_with_email.dart';
import 'package:flutter_application_1/ui/cryptos/crypto_screen.dart';
import 'package:get/get.dart';

class LoginPresenter extends GetxController {
  LoginPresenter({
    required this.loginWithEmail,
    required this.registerWithEmail,
  });

  LoginWithEmail loginWithEmail;
  RegisterWithEmail registerWithEmail;

  var userEmail = '';
  var userPassword = '';

  void onUserEmailUpdate(String email) {
    userEmail = email;
  }

  void onPasswordUpdate(String password) {
    userPassword = password;
  }

  void onLoginButtonPressed() async {
    /* var user = await loginWithEmail.execute(userEmail, userPassword);
    user ??= await registerWithEmail.execute(userEmail, userPassword);
    if (user == null) {
      // show error message
      print("nao autenticado");
    } else {
      Get.offNamed(CryptoScreen.id);
    } */

    Get.offNamed(CryptoScreen.id);
  }
}
