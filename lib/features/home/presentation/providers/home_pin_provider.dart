import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pinterest_clone/features/data/pin_model.dart';
import 'package:pinterest_clone/features/data/pin_repository_impl.dart';
import 'package:pinterest_clone/features/domain/repositories/pin_repository.dart';
import 'package:pinterest_clone/core/network/dio_provider.dart';

final pinRepositoryProvider = Provider<PinRepository>((ref) {
  return PinRepositoryImpl(ref.read(pexelsDioProvider));
});

final homePinsProvider =
    AsyncNotifierProvider<HomePinsController, List<Pin>>(
        HomePinsController.new);

class HomePinsController extends AsyncNotifier<List<Pin>> {
  @override
  Future<List<Pin>> build() async {
    return ref.read(pinRepositoryProvider).getPins();
  }
}