import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telefonchu/features/models/data/models/model_model.dart';
import 'package:telefonchu/features/models/domain/use_cases/add_model_use_case.dart';

import '../../../../../core/errors/failure.dart';

part 'add_model_state.dart';

class AddModelCubit extends Cubit<AddModelState> {
  AddModelCubit(this.useCase) : super(AddModelInitial());
  final AddModelUseCase useCase;
  addModel(ModelModel model) async {
    emit(AddModelInProgress());
    final result = await useCase.call(model);
    result.fold((l) => emit(AddModelFailure(l)), (r) => emit(AddModelSuccess(r)));
  }
}
