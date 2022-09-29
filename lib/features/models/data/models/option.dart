import 'dart:convert';

import 'package:telefonchu/features/models/data/models/price_mode.dart';
import 'package:telefonchu/features/models/domain/entities/option_entity.dart';

class ModelOptionModel extends ModelOption {
  const ModelOptionModel({super.price, super.storage});
  factory ModelOptionModel.fromMap(Map<String, dynamic> map) {
    return ModelOptionModel(
      price: map['price'] != null ? PriceModel.fromMap(map['price']) : null,
      storage: map['storage'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'price': price,
      'storage': storage,
    };
  }

  String toJson() => json.encode(toMap());

  factory ModelOptionModel.fromJson(String source) => ModelOptionModel.fromMap(json.decode(source));
}
