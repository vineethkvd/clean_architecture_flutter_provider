import 'package:clean_architecture_flutter_provider/features/counter/data/models/counter_model.dart';

abstract class CounterRepositories {
  CounterModel getCounter();
}
