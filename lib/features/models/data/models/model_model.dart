import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:telefonchu/features/models/domain/entities/model_entity.dart';

class ModelModel extends Model {
  const ModelModel({
    super.name,
    super.id,
    super.brandID,
    super.docId,
    super.modelOptions,
  });
  factory ModelModel.fromMap(Map<String, dynamic> map) {
    return ModelModel(
        name: map['name'],
        id: map['id'],
        brandID: map['brand_id'],
        modelOptions: map['storage_options']);
  }
  factory ModelModel.fromSnapshot(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return ModelModel(
      name: data['name'],
      id: data['id'],
      modelOptions: data['storage_options'],
      brandID: data['brand_id'],
      docId: doc.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'id': id,
      'storage_options': modelOptions,
      'brand_id': brandID,
    };
  }

  String toJson() => json.encode(toMap());

  factory ModelModel.fromJson(String source) => ModelModel.fromMap(json.decode(source));
}

@Collection<ModelModel>('model')
final modelRef = FirebaseFirestore.instance.collection('model');
