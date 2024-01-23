import 'package:dio/dio.dart';
import 'package:movies_app/infra/api/client/backend_client.dart';

abstract class BaseAPI {
  final Dio _client;

  BaseAPI() : _client = backendClient;

  Dio get client => _client;
}
