import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/entities/crypto_entity.dart';
import 'package:flutter_application_1/presentation/crypto_presenter.dart';
import 'package:flutter_application_1/ui/cryptos/components/crypto_card.dart';
import 'package:get/get.dart';

class CryptoScreen extends StatelessWidget {
  static const String id = '/beers';

  const CryptoScreen({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  final CryptoPresenter presenter;

  void showError(String errorMessage) async {
    Get.snackbar(errorMessage, '');
  }

  @override
  Widget build(BuildContext context) {
    presenter.errorMessage.listen((errorMessage) {
      if (errorMessage.isNotEmpty) showError(errorMessage);
    });

    return Scaffold(body: SafeArea(
      child: Obx(
        () {
          final cryptoList = presenter.cryptoList.value;
          return ListView.builder(
              itemCount: cryptoList.length,
              itemBuilder: (context, index) {
                return Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    height: 220,
                    width: double.maxFinite,
                    child: CryptoCard(cryptoEntity: cryptoList[index]));
              }); //
        },
      ),
    ));
  }
}
