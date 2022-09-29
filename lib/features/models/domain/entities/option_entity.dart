import 'package:equatable/equatable.dart';

import 'package:telefonchu/features/models/domain/entities/price_entity.dart';

class ModelOption extends Equatable {
  const ModelOption({this.price, this.storage});
  final Price? price;
  final int? storage;

  @override
  List<Object?> get props => [price, storage];
}
