import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:telefonchu/features/models/data/models/model_model.dart';



abstract class ModelsDataSource {
  Future<List<ModelModel>> loadModels(String brandID);
  Future<ModelModel> addModel(Map<String, dynamic> modelJson);
  Future<ModelModel> update(ModelModel model);
  Future<void> removeModel(String docID);
}

class ModelsDataSourceImpl extends ModelsDataSource {
  final FirebaseFirestore firestore;
  ModelsDataSourceImpl(this.firestore);
  @override
  Future<List<ModelModel>> loadModels(String brandID) async {
    final data = await firestore.collection('model').where('brand_id', isEqualTo: brandID).get();

    return data.docs.map((e) => ModelModel.fromSnapshot(e)).toList();
  }

  @override
  Future<ModelModel> addModel(Map<String, dynamic> modelJson) async {

    
    final data =
        await firestore.collection('model').add(modelJson);

    return ModelModel.fromMap((await data.get()).data()!);
  }

  @override
  Future<void> removeModel(String docID) async {
    await firestore.collection('model').doc(docID).delete();

    return;
  }

  @override
  Future<ModelModel> update(ModelModel model) async {
    await firestore.collection('model').doc(model.docId).update(model.toMap());

    return model;
  }
}
