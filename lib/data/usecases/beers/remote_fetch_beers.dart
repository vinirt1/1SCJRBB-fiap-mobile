import 'package:flutter_application_1/data/http/http_client.dart';
import 'package:flutter_application_1/data/http/http_error.dart';
import 'package:flutter_application_1/data/usecases/beers/models/beer_model.dart';
import 'package:flutter_application_1/domain/entities/beer_entity.dart';
import 'package:flutter_application_1/domain/utils/domain_error.dart';

import '../../../domain/usecases/auth/beer/fetch_beers.dart';

class RemoteFetchBeers extends FetchBeers {
  RemoteFetchBeers({
    required this.httpClient,
  });

  final HttpClient httpClient;

  @override
  Future<List<BeerEntity>> execute() async {
    try {
      // https://api.punkapi.com/v2/beers
      final response =
          await httpClient.get(url: 'http://demo5168609.mockable.io/cats');

      final beersList = response?['results']
          .map<BeerEntity>((json) => BeerModel.fromJson(json).toEntity())
          .toList();

      return beersList ?? [];
    } on HttpError catch (error) {
      if (error == HttpError.forbidden || error == HttpError.unauthorized) {
        throw DomainError.invalidCredentials;
      } else {
        throw DomainError.unexpected;
      }
    }
  }
}
