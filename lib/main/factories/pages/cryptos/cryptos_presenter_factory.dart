import 'package:flutter_application_1/main/factories/usecases/cryptos/remote_fetch_cryptos_factory.dart';
import 'package:flutter_application_1/presentation/crypto_presenter.dart';

CryptoPresenter makeCryptosPresenter() => CryptoPresenter(
      fetchCrytos: makeRemoteFetchCryptos(),
    );
