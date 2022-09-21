import 'package:dartz/dartz.dart';
import 'package:telefonchu/core/errors/failure.dart';
import 'package:telefonchu/features/models/data/models/model_model.dart';

abstract class ModelsRepository {
  Future<Either<Failure, List<ModelModel>>> loadModels(String brandID);
  Future<Either<Failure, ModelModel>> addModel(ModelModel model);
  Future<Either<Failure, void>> deleteModel(String docID);
  Future<Either<Failure, ModelModel>> update(ModelModel model);
}
