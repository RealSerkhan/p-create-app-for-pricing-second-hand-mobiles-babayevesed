// import 'dart:convert';
// import 'package:cloud_firestore_odm/annotation.dart';
// import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:telefonchu/features/brands/data/models/brand.dart';
import 'package:telefonchu/features/models/domain/entities/model_entity.dart';

// part 'model_model.g.dart';

// @JsonSerializable()
class ModelModel extends Model {
  const ModelModel({
    super.name,
    super.id,
    super.brandID,
    super.docId,
    super.brand,
  });
  factory ModelModel.fromMap(Map<String, dynamic> map) {
    return ModelModel(
      name: map['name'],
      id: map['id'],
      brandID: map['brand_id'],
      brand: map['brand'] == null ? null : BrandModel.fromMap(map['brand']),
    );
  }
  factory ModelModel.fromSnapshot(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return ModelModel(
      name: data['name'],
      id: data['id'],
      brandID: data['brand_id'],
      docId: doc.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {'name': name, 'id': id, 'brand_id': brandID};
  }

  // String toJson() => json.encode(toMap());

  // factory ModelModel.fromJson(String source) => ModelModel.fromMap(json.decode(source));
}

// @Collection<ModelModel>('model')
// final modelRef = ModelModelCollectionReference();
