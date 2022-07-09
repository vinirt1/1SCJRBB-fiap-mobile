import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/usecases/auth/login_with_email.dart';
import 'package:flutter_application_1/domain/usecases/auth/register_with_email.dart';
import 'package:flutter_application_1/ui/cryptos/crypto_screen.dart';
import 'package:flutter_application_1/ui/register/register_screen.dart';
import 'package:get/get.dart';

class LoginPresenter extends GetxController {
  LoginPresenter({
    required this.loginWithEmail,
    required this.registerWithEmail,
  });

  User? loggedUser;

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

  void getLoggedUser(){
    loggedUser = FirebaseAuth.instance.currentUser;
    if(loggedUser == null){
    //   Get.snackbar("Realize seu login", ''
    //       'Insira suas credenciais para consultar a lista de cryptos'
    //       , backgroundColor: Colors.yellow);
      print("nao tem usuario logado");
    }
    else{
      Get.offNamed(CryptoScreen.id);
    }
  }

  void onLoginButtonPressed() async {
    var user = await loginWithEmail.execute(userEmail, userPassword);
    if (user == null) {
      Get.snackbar("Não foi possível autenticar", ''
          'Confirme suas credenciais ou registre-se'
          , backgroundColor: Colors.red);
    } else {
      Get.offNamed(CryptoScreen.id);
    }

    //Get.offNamed(CryptoScreen.id);
  }

  void onRegisterLinkPressed() async {
    print("passei");
    Get.offNamed(RegisterScreen.id);
  }


}
