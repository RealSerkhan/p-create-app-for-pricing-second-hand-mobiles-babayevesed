import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:telefonchu/features/brands/data/datasources/brands_datasource.dart';
import 'package:telefonchu/features/brands/data/repositories.dart/brands_repository_impl.dart';
import 'package:telefonchu/features/brands/domain/repositories/brands_repository.dart';
import 'package:telefonchu/features/brands/domain/use_cases/add_brand_use_case.dart';
import 'package:telefonchu/features/brands/domain/use_cases/load_brands.dart';
import 'package:telefonchu/features/brands/domain/use_cases/update_brand_use_case.dart';
import 'package:telefonchu/features/brands/presentation/blocs/add_brand/add_brand_cubit.dart';
import 'package:telefonchu/features/brands/presentation/blocs/delete_brand/delete_brand_cubit.dart';
import 'package:telefonchu/features/brands/presentation/blocs/load_brands/brands_cubit.dart';
import 'package:telefonchu/features/brands/presentation/blocs/update_brand/update_brand_cubit.dart';
import 'package:telefonchu/features/models/data/datasources/model_data_source.dart';
import 'package:telefonchu/features/models/data/repositories/model_repository_impl.dart';
import 'package:telefonchu/features/models/domain/repositories/model_repository.dart';
import 'package:telefonchu/features/models/domain/use_cases/add_model_use_case.dart';
import 'package:telefonchu/features/models/domain/use_cases/delete_model_use_case.dart';
import 'package:telefonchu/features/models/domain/use_cases/load_models_use_case.dart';
import 'package:telefonchu/features/models/presentation/blocs/add_model/add_model_cubit.dart';
import 'package:telefonchu/features/models/presentation/blocs/loads_models/models_cubit.dart';

import 'features/brands/domain/use_cases/delete_brand_use_case.dart';
import 'features/models/domain/use_cases/load_model_use_case.dart';
import 'features/models/domain/use_cases/update_model_use_case.dart';
import 'features/models/presentation/blocs/delete_model/delete_model_cubit.dart';
import 'features/models/presentation/blocs/model/model_cubit.dart';
import 'features/models/presentation/blocs/update_model/update_model_cubit.dart';

final di = GetIt.instance;

Future<void> initDI() async {
  //* Blocs
  di.registerFactory(() => BrandsCubit(di()));
  di.registerFactory(() => ModelsCubit(di()));
  di.registerFactory(() => UpdateBrandCubit(di()));
  di.registerFactory(() => DeleteBrandCubit(di()));
  di.registerFactory(() => AddBrandCubit(di()));
  di.registerFactory(() => AddModelCubit(di()));
  di.registerFactory(() => UpdateModelCubit(di()));
  di.registerFactory(() => DeleteModelCubit(di()));
  di.registerFactory(() => ModelCubit(di()));

  //* Use cases
  di.registerLazySingleton(() => LoadBrandsUseCase(di()));
  di.registerLazySingleton(() => LoadModelsUseCase(di()));
  di.registerLazySingleton(() => UpdateBrandUseCase(di()));
  di.registerLazySingleton(() => DeleteBrandUseCase(di()));
  di.registerLazySingleton(() => AddBrandUseCase(di()));
  di.registerLazySingleton(() => AddModelUseCase(di()));
  di.registerLazySingleton(() => UpdateModelUseCase(di()));
  di.registerLazySingleton(() => DeleteModelUseCase(di()));
  di.registerLazySingleton(() => LoadModelUseCase(di()));

  //* Repositories
  di.registerLazySingleton<BrandRepository>(() => BrandsRepositoryImpl(di()));
  di.registerLazySingleton<ModelsRepository>(() => ModelsRepositoryImpl(di()));

  // * Data sources
  di.registerLazySingleton<BrandsDataSource>(
    () => BrandsDataSourceImpl(di()),
  );
  di.registerLazySingleton<ModelsDataSource>(
    () => ModelsDataSourceImpl(di()),
  );

  //* Core

  //* External
  di.registerLazySingleton(() => FirebaseFirestore.instance);
}
