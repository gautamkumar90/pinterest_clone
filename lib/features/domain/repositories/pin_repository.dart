import 'package:pinterest_clone/features/data/pin_model.dart';

abstract class PinRepository {
  Future<List<Pin>> getPins();
}