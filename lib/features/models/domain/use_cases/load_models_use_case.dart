import 'package:dartz/dartz.dart';
import 'package:telefonchu/features/models/data/models/model_model.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/use_case/use_case.dart';
import '../repositories/model_repository.dart';

class LoadModelsUseCase extends Usecase<List<ModelModel>, String> {
  LoadModelsUseCase(this.repository);

  final ModelsRepository repository;

  @override
  Future<Either<Failure, List<ModelModel>>> call(String params) {
    return repository.loadModels(params);
  }
}
