import 'package:equatable/equatable.dart';
import 'package:telefonchu/features/brands/data/models/brand.dart';
import 'package:telefonchu/features/models/domain/entities/option_entity.dart';
import 'package:telefonchu/features/models/domain/entities/price_entity.dart';

class Model extends Equatable {
  final String? name;
  final String? id;
  final String? brandID;
  final String? docId;

  final List<ModelOption>? modelOptions;
  final Price? price;

  const Model({
    this.name,
    this.id,
    this.brandID,
    this.docId,
    this.price,
    this.modelOptions,
  });

  @override
  List<Object?> get props => [name, id, brandID, modelOptions, brand, docId];
}
