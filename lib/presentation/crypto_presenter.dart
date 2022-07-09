import 'package:flutter_application_1/domain/entities/crypto_entity.dart';
import 'package:flutter_application_1/domain/usecases/cryptos/fetch_cryptos.dart';
import 'package:flutter_application_1/domain/utils/domain_error.dart';
import 'package:get/get.dart';

class CryptoPresenter extends GetxController {
  CryptoPresenter({required this.fetchCrytos});

  final FetchCrytos fetchCrytos;

  final cryptoList = Rx<List<CryptoEntity>>([]);
  final errorMessage = RxString('');

  @override
  void onInit() async {
    super.onInit();
    try {
      cryptoList.value = await fetchCrytos.execute();
    } on DomainError catch (error) {
      errorMessage.value = (error == DomainError.invalidCredentials)
          ? 'Credenciais inválidas'
          : 'Erro, tente novamente';
    }
  }
}
