import 'package:flutter_application_1/domain/entities/BeerEntity.dart';

abstract class FetchBeers {
  Future<List<BeerEntity>> execute();
}
