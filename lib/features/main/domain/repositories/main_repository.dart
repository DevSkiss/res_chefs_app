import 'package:res_chefs_app/app/injection_container.dart';
import 'package:res_chefs_app/core/data/models/chefs_model.dart';
import 'package:res_chefs_app/core/data/models/restaurants_model.dart';
import 'package:res_chefs_app/core/data/models/work_model.dart';
import 'package:res_chefs_app/core/data/source/local_data_source.dart';
import 'package:res_chefs_app/features/restaurants/data/models/restaurant_viewmodel.dart';

abstract class MainRepository {
  Future<List<RestaurantsModel>> getRestaurants();
  Future<void> insertRestaurants(List<RestaurantsModel> restaurants);
  Future<List<ChefsModel>> getChefs();
  Future<void> insertChefs(List<ChefsModel> chefs);
  Future<List<WorkModel>> getWorks();
  Future<void> insertWork(List<WorkModel> works);
  Future<List<RestaurantViewModel>> getResChefs(
      List<RestaurantsModel> restaurants);
}

class MainRepositoryImpl implements MainRepository {
  final LocalDataSource _localDataSource = locator<LocalDataSource>();
  @override
  Future<List<RestaurantsModel>> getRestaurants() async {
    return await _localDataSource.getRestaurants();
  }

  @override
  Future<List<ChefsModel>> getChefs() async {
    return await _localDataSource.getChefs();
  }

  @override
  Future<List<WorkModel>> getWorks() async {
    return await _localDataSource.getWorks();
  }

  @override
  Future<void> insertChefs(List<ChefsModel> chefs) async {
    return await _localDataSource.insertChefs(chefs);
  }

  @override
  Future<void> insertRestaurants(List<RestaurantsModel> restaurants) async {
    return await _localDataSource.insertRestaurants(restaurants);
  }

  @override
  Future<void> insertWork(List<WorkModel> works) async {
    return await _localDataSource.insertWork(works);
  }

  @override
  Future<List<RestaurantViewModel>> getResChefs(
      List<RestaurantsModel> restaurants) async {
    return await _localDataSource.getRestaurantWithChefs(restaurants);
  }
}
