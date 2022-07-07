import 'package:flutter_application_1/main/factories/usecases/beers/remote_fetch_beers_factory.dart';
import 'package:flutter_application_1/presentation/beer_presenter.dart';

BeerPresenter makeBeersPresenter() => BeerPresenter(
      fetchBeers: makeRemoteFetchBeers(),
    );
