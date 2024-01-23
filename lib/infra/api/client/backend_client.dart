import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final options = BaseOptions(
  baseUrl: dotenv.env['MOVIES_API']!,
  connectTimeout: const Duration(seconds: 5),
  receiveTimeout: const Duration(seconds: 3),
  headers: {"Authorization": "Bearer ${dotenv.env['MOVIES_API_KEY']}"},
);

final Dio backendClient = Dio(options);
