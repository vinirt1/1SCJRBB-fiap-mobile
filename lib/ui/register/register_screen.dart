import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/register_presenter.dart';
import 'package:flutter_application_1/ui/login/components/rectangular_text_field.dart';

import '../../presentation/login_presenter.dart';

class RegisterScreen extends StatelessWidget {
  static const String id = "/register";

  const RegisterScreen({Key? key, required this.presenter}) : super(key: key);

  final RegisterPresenter presenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Criar Conta',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      ' ',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                    padding: const EdgeInsets.all(10),
                    child: RectangularTextField(
                      onTextChanged: presenter.onUserEmailUpdate,
                      hint: "Email",
                      obscureText: false,
                    )),
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: RectangularTextField(
                      onTextChanged: presenter.onPasswordUpdate,
                      hint: "Senha",
                      obscureText: true,
                    )),
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: RectangularTextField(
                      onTextChanged: presenter.onConfirmPasswordUpdate,
                      hint: "Confirme a senha",
                      obscureText: true,
                    )),
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: const Text(
                    ' ',
                  ),
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Registrar'),
                      onPressed: presenter.onRegisterButtonPressed,
                    )),
              ],
            )),
      ),
    );
  }
}
