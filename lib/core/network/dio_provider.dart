import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pexelsDioProvider  = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: "https://api.pexels.com/v1",
    headers: {
      "Authorization": "FDBwJC9ihb27BaW1NjmCewj34oKTyLLnL5vKwdptlsOCbbi8dfw3RyqG",
    },
  ));
  return dio;
});

final unsplashDioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: "https://api.unsplash.com/v1",
    headers: {
      "Authorization": "Client-ID nwXju73XkqT3XZ84jz19HhUqbYpmvgm-uRiBsBQpWeg",
    },
  ));
  return dio;
});