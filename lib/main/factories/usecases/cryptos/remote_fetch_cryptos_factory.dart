import 'package:flutter_application_1/domain/usecases/cryptos/fetch_cryptos.dart';
import 'package:flutter_application_1/main/factories/infra/http_adapter_factory.dart';

import '../../../../data/usecases/cryptos/remote_fetch_cryptos.dart';

FetchCrytos makeRemoteFetchCryptos() => RemoteFetchCrytos(
      httpClient: makeHttpAdapter(),
    );
