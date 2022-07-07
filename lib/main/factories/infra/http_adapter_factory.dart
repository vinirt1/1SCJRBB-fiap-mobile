import 'package:flutter_application_1/infra/http/http_adapter.dart';
import 'package:http/http.dart';

HttpAdapter makeHttpAdapter() => HttpAdapter(client: Client());
