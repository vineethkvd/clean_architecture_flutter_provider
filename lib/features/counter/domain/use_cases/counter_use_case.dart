import 'package:clean_architecture_flutter_provider/features/counter/data/models/counter_model.dart';
import 'package:clean_architecture_flutter_provider/features/counter/domain/entities/counter_entity.dart';

import '../../data/repositories/counter_repositories_imp.dart';

class CounterUseCase {
  final CounterRepositoriesImp counterRepositoriesImp;

  CounterUseCase(this.counterRepositoriesImp);
  CounterEntity execute() {
    return counterRepositoriesImp.getCounter();
  }
}
