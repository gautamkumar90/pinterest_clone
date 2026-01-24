import 'package:dio/dio.dart';
import 'package:pinterest_clone/features/domain/repositories/pin_repository.dart';
import 'package:pinterest_clone/features/data/pin_model.dart';

class PinRepositoryImpl implements PinRepository {
  final Dio dio;

  PinRepositoryImpl(this.dio);

  @override
  Future<List<Pin>> getPins() async {
    final res = await dio.get('/curated');
    return (res.data['photos'] as List)
        .map((e) => Pin.fromJson(e))
        .toList();
  }
}
