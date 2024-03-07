//because they share smae field
import 'package:clean_architecture_flutter_provider/features/counter/domain/entities/counter_entity.dart';

class CounterModel extends CounterEntity {
  CounterModel({required super.count});
  factory CounterModel.fromJson(Map<String, dynamic> json) {
    return CounterModel(count: json['count']);
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
    };
  }
}
