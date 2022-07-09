import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../presentation/login_presenter.dart';
import '../cryptos/crypto_screen.dart';
import 'after_layout.dart';
import 'login_screen.dart';

@immutable
class Landing extends StatefulWidget {
  static const String id = "/landing";
  const Landing({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<Landing> with AfterLayoutMixin<Landing> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.black),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    verifyLoggedUser();
  }

  void verifyLoggedUser() {
    var loggedUser = FirebaseAuth.instance.currentUser;
    if(loggedUser == null){
        Get.snackbar("Realize seu login", ''
            'Insira suas credenciais para consultar a lista de cryptos'
            , backgroundColor: Colors.yellow);
        Get.offNamed(LoginScreen.id);
    }
    else{
      Get.snackbar("Bem vindo", "Você está autenticado como: ${loggedUser.email}"
          , backgroundColor: Colors.blue);
      Get.offNamed(CryptoScreen.id);
    }
  }
}