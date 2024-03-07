import 'package:clean_architecture_flutter_provider/features/counter/data/models/counter_model.dart';

abstract class CounterLocalDataSource {
  CounterModel getCounter();
}

class CounterLocalDataSourceImpl implements CounterLocalDataSource {
  @override
  CounterModel getCounter() {
    return CounterModel(count: 5);
  }
}
