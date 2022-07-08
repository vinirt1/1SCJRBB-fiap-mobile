import 'package:flutter_application_1/domain/entities/crypto_entity.dart';

abstract class FetchCrytos {
  Future<List<CryptoEntity>> execute();
}
