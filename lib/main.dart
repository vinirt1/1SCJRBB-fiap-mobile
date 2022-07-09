import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/main/factories/pages/cryptos/cryptos_screen_factory.dart';
import 'package:flutter_application_1/main/factories/pages/login/login_screen_factory.dart';
import 'package:flutter_application_1/main/factories/pages/register/register_screen_factory.dart';
import 'package:flutter_application_1/ui/cryptos/crypto_screen.dart';
import 'package:flutter_application_1/ui/login/login_screen.dart';
import 'package:flutter_application_1/ui/register/register_screen.dart';
import 'package:get/get.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: LoginScreen.id,
      getPages: [
        GetPage(name: LoginScreen.id, page: makeLoginScreen),
        GetPage(name: RegisterScreen.id, page: makeRegisterScreen),
        GetPage(name: CryptoScreen.id, page: makeCryptosScreen),
      ],
    );
  }
}
