import 'package:clean_architecture_flutter_provider/features/counter/data/models/counter_model.dart';

import '../../domain/repositories/counter_repositories.dart';
import '../data_sources/local/counter_local_datasource.dart';

class CounterRepositoriesImp extends CounterRepositories {
  final CounterLocalDataSourceImpl counterLocalDataSourceImpl;

  CounterRepositoriesImp({required this.counterLocalDataSourceImpl});

  @override
  CounterModel getCounter() {
    return counterLocalDataSourceImpl.getCounter();
  }
}
