import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:res_chefs_app/core/data/models/chefs_model.dart';
import 'package:res_chefs_app/core/data/models/restaurants_model.dart';
import 'package:res_chefs_app/features/restaurants/data/models/restaurant_viewmodel.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  factory MainState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default(false) bool isFinished,
    List<RestaurantViewModel>? listOfResChefsVM,
    List<ChefsModel>? listOfChefs,
    List<RestaurantsModel>? listOfRestaurants,
  }) = _MainState;
}
