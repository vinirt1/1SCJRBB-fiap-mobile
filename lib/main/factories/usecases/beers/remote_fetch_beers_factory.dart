import 'package:flutter_application_1/domain/usecases/auth/beer/fetch_beers.dart';
import 'package:flutter_application_1/main/factories/infra/http_adapter_factory.dart';

import '../../../../data/usecases/beers/remote_fetch_beers.dart';

FetchBeers makeRemoteFetchBeers() => RemoteFetchBeers(
      httpClient: makeHttpAdapter(),
    );
