import 'package:flutter_application_1/domain/entities/beer_entity.dart';
import 'package:flutter_application_1/domain/usecases/auth/beer/fetch_beers.dart';
import 'package:flutter_application_1/domain/utils/domain_error.dart';
import 'package:get/get.dart';

class BeerPresenter extends GetxController {
  BeerPresenter({required this.fetchBeers});

  final FetchBeers fetchBeers;

  final beersList = Rx<List<BeerEntity>>([]);
  final errorMessage = RxString('');

  @override
  void onInit() async {
    super.onInit();
    try {
      beersList.value = await fetchBeers.execute();
    } on DomainError catch (error) {
      errorMessage.value = (error == DomainError.invalidCredentials)
          ? 'Credenciais inválidas'
          : 'Erro, tente novamente';
    }
  }
}
