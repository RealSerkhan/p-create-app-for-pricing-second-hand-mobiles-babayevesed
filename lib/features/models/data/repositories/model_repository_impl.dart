import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:telefonchu/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:telefonchu/features/models/data/datasources/model_data_source.dart';
import 'package:telefonchu/features/models/data/models/model_model.dart';
import 'package:telefonchu/features/models/domain/repositories/model_repository.dart';

class ModelsRepositoryImpl extends ModelsRepository {
  final ModelsDataSource dataSource;
  ModelsRepositoryImpl(this.dataSource);
  @override
  Future<Either<Failure, List<ModelModel>>> loadModels(String brandID) async {
    try {
      final data = await dataSource.loadModels(brandID);
      return Right(data);
    } catch (e) {
      return Left(UnknownFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, ModelModel>> addModel(ModelModel model) async {
    try {
      final data = await dataSource.addModel(model.toMap()
        ..addAll({"brand": FirebaseFirestore.instance.collection('brand').doc('samsung')}));
      return Right(data);
    } catch (e) {
      return Left(UnknownFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteModel(String docID) async {
    try {
      final data = await dataSource.removeModel(docID);
      return Right(data);
    } catch (e) {
      return Left(UnknownFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, ModelModel>> update(ModelModel model) async {
    try {
      final data = await dataSource.update(model);
      return Right(data);
    } catch (e) {
      return Left(UnknownFailure(errorMessage: e.toString()));
    }
  }
  
  @override
  Future<Either<Failure, ModelModel>> getModel(String docID) async {
    try {
      final data = await dataSource.loadModel(docID);
      return Right(data);
    } catch (e) {
      return Left(UnknownFailure(errorMessage: e.toString()));
    }
  }
}
