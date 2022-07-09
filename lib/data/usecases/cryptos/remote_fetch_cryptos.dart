import 'package:flutter_application_1/data/http/http_client.dart';
import 'package:flutter_application_1/data/http/http_error.dart';
import 'package:flutter_application_1/data/usecases/cryptos/models/crypto_model.dart';
import 'package:flutter_application_1/domain/entities/crypto_entity.dart';
import 'package:flutter_application_1/domain/usecases/cryptos/fetch_cryptos.dart';
import 'package:flutter_application_1/domain/utils/domain_error.dart';

class RemoteFetchCrytos extends FetchCrytos {
  RemoteFetchCrytos({
    required this.httpClient,
  });

  final HttpClient httpClient;

  @override
  Future<List<CryptoEntity>> execute() async {
    try {
      final response =
          await httpClient.get(url: 'https://www.cryptingup.com/api/markets');

      final cryptoList = response?['markets']
          .map<CryptoEntity>((json) => CryptoModel.fromJson(json).toEntity())
          .toList();

      return cryptoList ?? [];
    } on HttpError catch (error) {
      if (error == HttpError.forbidden || error == HttpError.unauthorized) {
        throw DomainError.invalidCredentials;
      } else {
        throw DomainError.unexpected;
      }
    }
  }
}
