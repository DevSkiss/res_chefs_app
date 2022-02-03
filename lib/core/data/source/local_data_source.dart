import 'dart:convert';

import 'package:logger/logger.dart';
import 'package:res_chefs_app/app/database.dart';
import 'package:res_chefs_app/app/injection_container.dart';
import 'package:res_chefs_app/core/data/models/chefs_model.dart';
import 'package:res_chefs_app/core/data/models/restaurants_model.dart';
import 'package:res_chefs_app/core/data/models/work_model.dart';
import 'package:res_chefs_app/core/domain/utils/database_handler.dart';
import 'package:res_chefs_app/core/domain/utils/res_chefs_exception.dart';
import 'package:res_chefs_app/features/restaurants/data/models/restaurant_viewmodel.dart';
import 'package:sqflite/sqflite.dart';

abstract class LocalDataSource {
  Future<List<RestaurantsModel>> getRestaurants();
  Future<void> insertRestaurants(List<RestaurantsModel> restaurants);
  Future<List<ChefsModel>> getChefs();
  Future<ChefsModel> getChefsById(int id);
  Future<void> insertChefs(List<ChefsModel> chefs);
  Future<List<WorkModel>> getWorks();
  Future<List<WorkModel>> getWorksByRestaurant(int resId);
  Future<void> insertWork(List<WorkModel> works);

  Future<List<RestaurantViewModel>> getRestaurantWithChefs(
      List<RestaurantsModel> restaurants);
}

class LocalDataSourceImpl extends LocalDataSource {
  final DatabaseHelper _databaseHelper = locator<DatabaseHelper>();
  final Logger logger = locator<Logger>();

  @override
  Future<List<RestaurantsModel>> getRestaurants() async {
    // Get a reference to the database.
    final database = await _databaseHelper.database;
    final List<Map<String, dynamic>> maps =
        await database.query(dbTableRestaurants);

    final List<RestaurantsModel> resturantList =
        List.generate(maps.length, (i) {
      return RestaurantsModel.fromJson(maps[i]);
    });
    logger.d(maps.toString());
    if (resturantList.isNotEmpty) {
      return resturantList;
    } else {
      throw NoRestaurantLocally();
    }
  }

  @override
  Future<void> insertRestaurants(List<RestaurantsModel> restaurants) async {
    final database = await _databaseHelper.database;
    Batch batch = database.batch();
    for (RestaurantsModel restaurant in restaurants) {
      batch.insert(
        dbTableRestaurants,
        restaurant.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
    await batch.commit(noResult: true);
  }

  @override
  Future<List<ChefsModel>> getChefs() async {
    final database = await _databaseHelper.database;
    final List<Map<String, dynamic>> maps = await database.query(dbTableChefs);

    final List<ChefsModel> chefsList = List.generate(maps.length, (i) {
      return ChefsModel.fromJson(maps[i]);
    });
    logger.d(maps.toString());
    if (chefsList.isNotEmpty) {
      return chefsList;
    } else {
      throw NoChefLcoally();
    }
  }

  @override
  Future<List<WorkModel>> getWorks() async {
    final database = await _databaseHelper.database;
    final List<Map<String, dynamic>> maps = await database.query(dbTableWork);

    final List<WorkModel> workList = List.generate(maps.length, (i) {
      return WorkModel.fromJson(maps[i]);
    });
    logger.d(maps.toString());
    if (workList.isNotEmpty) {
      return workList;
    } else {
      throw NoWorkLcoally();
    }
  }

  @override
  Future<void> insertChefs(List<ChefsModel> chefs) async {
    final database = await _databaseHelper.database;
    Batch batch = database.batch();
    for (ChefsModel chef in chefs) {
      batch.insert(
        dbTableChefs,
        chef.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
    await batch.commit(noResult: true);
  }

  @override
  Future<void> insertWork(List<WorkModel> works) async {
    final database = await _databaseHelper.database;
    Batch batch = database.batch();
    for (WorkModel work in works) {
      batch.insert(
        dbTableWork,
        work.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
    await batch.commit(noResult: true);
  }

  @override
  Future<List<RestaurantViewModel>> getRestaurantWithChefs(
      List<RestaurantsModel> restaurants) async {
    List<RestaurantViewModel> _listOfResChefs = <RestaurantViewModel>[];

    for (int i = 0; i < restaurants.length; i++) {
      List<ChefsModel> _listOfChefs = <ChefsModel>[];
      List<WorkModel> _listOfWork =
          await getWorksByRestaurant(restaurants[i].id);
      for (int j = 0; j < _listOfWork.length; j++) {
        _listOfChefs.add(await getChefsById(_listOfWork[j].chefId));
      }
      _listOfResChefs.add(
        RestaurantViewModel(
          restaurants[i].name,
          restaurants[i].address1,
          restaurants[i].address2,
          restaurants[i].city,
          restaurants[i].state,
          restaurants[i].country,
          restaurants[i].phone,
          _listOfChefs,
        ),
      );
    }
    logger.i(json.encode(_listOfResChefs));
    return _listOfResChefs;
  }

  @override
  Future<List<WorkModel>> getWorksByRestaurant(int resId) async {
    logger.i('GET WORK BY RESTAURANT ID');
    final database = await _databaseHelper.database;
    final List<Map<String, dynamic>> maps = await database.query(
      dbTableWork,
      where: 'restaurant_id = ?',
      whereArgs: [resId],
    );

    final List<WorkModel> workList = List.generate(maps.length, (i) {
      return WorkModel.fromJson(maps[i]);
    });
    logger.d(maps.toString());
    if (workList.isNotEmpty) {
      return workList;
    } else {
      throw NoWorkLcoally();
    }
  }

  @override
  Future<ChefsModel> getChefsById(int id) async {
    logger.i('GET CHEF BY ID');
    final database = await _databaseHelper.database;
    final List<Map<String, dynamic>> maps = await database.query(
      dbTableChefs,
      where: 'id = ?',
      whereArgs: [id],
    );

    final List<ChefsModel> chefsList = List.generate(maps.length, (i) {
      return ChefsModel.fromJson(maps[i]);
    });
    logger.d(maps.toString());
    if (chefsList.isNotEmpty) {
      return chefsList.first;
    } else {
      throw NoChefLcoally();
    }
  }
}
