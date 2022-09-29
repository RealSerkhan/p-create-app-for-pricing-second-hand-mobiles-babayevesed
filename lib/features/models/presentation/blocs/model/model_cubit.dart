import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telefonchu/features/models/domain/entities/model_entity.dart';
import 'package:telefonchu/features/models/domain/use_cases/load_model_use_case.dart';

import '../../../../../core/errors/failure.dart';
import '../../../data/models/model_model.dart';

part 'model_state.dart';

class ModelCubit extends Cubit<ModelState> {
  ModelCubit(this.useCase, {this.model}) : super(ModelInitial(model: model));
  LoadModelUseCase useCase;
  final Model? model;
  getModel(String docId) async {
    emit(ModelInProgress());
    final result = await useCase.call(docId);
    result.fold((l) => ModelFailure(l), (r) => ModelSuccess(r));
  }
}
