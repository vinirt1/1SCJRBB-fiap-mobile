import 'package:flutter_application_1/domain/entities/beer_entity.dart';

abstract class FetchBeers {
  Future<List<BeerEntity>> execute();
}
