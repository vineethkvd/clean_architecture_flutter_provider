import 'package:clean_architecture_flutter_provider/features/counter/data/models/counter_model.dart';
import 'package:flutter/material.dart';

import '../../domain/use_cases/counter_use_case.dart';

class CounterProvider extends ChangeNotifier {
  final CounterUseCase counterUseCase;
  CounterModel _counterModel = CounterModel(count: 0);

  CounterProvider(this.counterUseCase);

  CounterModel get counterModel => _counterModel;

  Future<void> fetchCounter() async {
    final count = await counterUseCase.execute();
    _counterModel = CounterModel(count: count.count);
    notifyListeners();
  }

  void incrementCount() {
    _counterModel = CounterModel(count: _counterModel.count + 1);
    notifyListeners();
  }

  void decrementCount() {
    _counterModel = CounterModel(count: _counterModel.count - 1);
    notifyListeners();
  }
}
