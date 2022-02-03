import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:res_chefs_app/app/injection_container.dart';
import 'package:res_chefs_app/core/data/models/chefs_model.dart';
import 'package:res_chefs_app/core/data/models/restaurants_model.dart';
import 'package:res_chefs_app/core/data/models/work_model.dart';
import 'package:res_chefs_app/core/domain/utils/res_chefs_exception.dart';
import 'package:res_chefs_app/features/main/domain/bloc/main_state.dart';
import 'package:res_chefs_app/features/main/domain/repositories/main_repository.dart';
import 'package:res_chefs_app/features/restaurants/data/models/restaurant_viewmodel.dart';

class MainBloc extends Cubit<MainState> {
  MainBloc() : super(MainState()) {
    initialized();
  }

  final MainRepository _repository = locator<MainRepository>();
  List<RestaurantsModel> _restaurants = [];
  void initialized() async {
    await runAllThese();
    await runAllThese();
    emit(state.copyWith(isLoading: true));
    try {
      emit(state.copyWith(isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false, hasError: false));
    }
  }

  Future<void> runAllThese() async {
    await getRestaurants();
    await getChefs();
    await getWorks();
    await getResChefs();
  }

  Future<void> getRestaurants() async {
    try {
      List<RestaurantsModel> restaurants = await _repository.getRestaurants();
      _restaurants = restaurants;
      emit(state.copyWith(listOfRestaurants: restaurants));
    } on NoRestaurantLocally {
      // Inser to restaurants
      await _repository.insertRestaurants(
        <RestaurantsModel>[
          RestaurantsModel(
            1,
            'Apple Bees',
            '230 Barrington Rd',
            '230 Barrington Rd',
            'South Barrington',
            'IL',
            'US',
            '630-908-2450',
          ),
          RestaurantsModel(
            2,
            'HoneyWorld',
            '500 Barrington Rd',
            '500 Barrington Rd',
            'North Barrington',
            'NY',
            'US',
            '612-241-232',
          ),
          RestaurantsModel(
            3,
            'Café Milano',
            '123 Barrington Rd',
            '523 Barrington Rd',
            'East Barrington',
            'CH',
            'US',
            '745-234-123',
          ),
          RestaurantsModel(
            4,
            'Streets of NY',
            '678 Barrington Rd',
            '678 Barrington Rd',
            'West Barrington',
            'LA',
            'US',
            '888-888-888',
          ),
          RestaurantsModel(
            5,
            'Yum Yum',
            '999 Barrington Rd',
            '999 Barrington Rd',
            'North East Barrington',
            'NY',
            'US',
            '444-444-444',
          ),
        ],
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, hasError: true));
    }
  }

  Future<void> getChefs() async {
    try {
      List<ChefsModel> chefs = await _repository.getChefs();
      emit(state.copyWith(listOfChefs: chefs));
    } on NoChefLcoally {
      // Inser to restaurants
      await _repository.insertChefs(
        <ChefsModel>[
          ChefsModel(
            1,
            'Robert',
            'Brown',
            '123 Test Dr',
            'DreamLand',
            'IL',
            'US',
            'robert@brown.com',
          ),
          ChefsModel(
            2,
            'Amy',
            'Morgan',
            '234 Freedom Dr',
            'Hollywood',
            'CA',
            'US',
            'amy@morgan.com',
          ),
          ChefsModel(
            3,
            'Anita',
            'Walker',
            '4359 Raver Croft Drive',
            'Tennessee',
            'TN',
            'US',
            'anita@walker.com',
          ),
          ChefsModel(
            4,
            'George',
            'Dodson',
            '2301 Emerson Road',
            'Louisiana',
            'LA',
            'US',
            'george@dodson.com',
          ),
          ChefsModel(
            5,
            'Melinda',
            'Parks',
            '2560 Pooz Street',
            'New Jersey',
            'NJ',
            'US',
            'melinda@parks.com',
          ),
        ],
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, hasError: true));
    }
  }

  Future<void> getWorks() async {
    try {
      List<WorkModel> works = await _repository.getWorks();
    } on NoWorkLcoally {
      // Inser to work
      await _repository.insertWork(
        <WorkModel>[
          WorkModel(1, 1),
          WorkModel(1, 4),
          WorkModel(1, 5),
          WorkModel(2, 3),
          WorkModel(2, 1),
          WorkModel(3, 1),
          WorkModel(3, 2),
          WorkModel(4, 1),
          WorkModel(4, 2),
          WorkModel(4, 3),
          WorkModel(5, 4),
          WorkModel(5, 5),
          WorkModel(3, 4),
        ],
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, hasError: true));
    }
  }

  Future<void> getResChefs() async {
    try {
      List<RestaurantViewModel> listOfResChefs = await _repository
          .getResChefs(state.listOfRestaurants ?? _restaurants);
      emit(state.copyWith(listOfResChefsVM: listOfResChefs));
    } catch (e) {
      emit(state.copyWith(isLoading: false, hasError: true));
    }
  }
}
