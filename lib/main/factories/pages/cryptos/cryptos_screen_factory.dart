import 'package:flutter/material.dart';
import 'package:flutter_application_1/main/factories/pages/cryptos/cryptos_presenter_factory.dart';
import 'package:flutter_application_1/presentation/crypto_presenter.dart';
import 'package:flutter_application_1/ui/cryptos/crypto_screen.dart';
import 'package:get/get.dart';

Widget makeCryptosScreen() {
  final presenter = Get.put<CryptoPresenter>(makeCryptosPresenter());
  return CryptoScreen(
    presenter: presenter,
  );
}
