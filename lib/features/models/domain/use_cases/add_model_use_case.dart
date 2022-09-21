import 'package:dartz/dartz.dart';
import 'package:telefonchu/features/models/data/models/model_model.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/use_case/use_case.dart';
import '../repositories/model_repository.dart';

class AddModelUseCase extends Usecase<ModelModel, ModelModel> {
  AddModelUseCase(this.repository);

  final ModelsRepository repository;

  @override
  Future<Either<Failure, ModelModel>> call(ModelModel params) {
    return repository.addModel(params);
  }
}
