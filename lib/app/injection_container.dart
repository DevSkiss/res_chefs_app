import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:res_chefs_app/core/data/source/local_data_source.dart';
import 'package:res_chefs_app/core/domain/utils/database_handler.dart';
import 'package:res_chefs_app/features/main/domain/bloc/main_bloc.dart';
import 'package:res_chefs_app/features/main/domain/repositories/main_repository.dart';
import 'package:res_chefs_app/features/restaurants/domain/bloc/restaurant_bloc.dart';
import 'package:res_chefs_app/features/restaurants/domain/repositories/restaurant_repository.dart';

final locator = GetIt.instance;

Future<void> init() async {
  //! Features - User
  // Bloc
  locator.registerFactory(() => MainBloc());
  locator.registerFactory(() => RestaurantBloc());

  // Repository
  locator.registerLazySingleton<MainRepository>(() => MainRepositoryImpl());
  locator.registerLazySingleton<RestaurantRepository>(
      () => RestaurantRepositoryImpl());

  // Source
  locator.registerLazySingleton<LocalDataSource>(() => LocalDataSourceImpl());

  locator.registerLazySingleton(() => DatabaseHelper.instance);

  locator.registerLazySingleton(() => Logger());
}
