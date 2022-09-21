import 'package:dartz/dartz.dart';
import 'package:telefonchu/features/models/data/models/model_model.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/use_case/use_case.dart';
import '../repositories/model_repository.dart';

class UpdateModelUseCase extends Usecase<ModelModel, ModelModel> {
  UpdateModelUseCase(this.repository);

  final ModelsRepository repository;

  @override
  Future<Either<Failure, ModelModel>> call(ModelModel params) {
    return repository.update(params);
  }
}
