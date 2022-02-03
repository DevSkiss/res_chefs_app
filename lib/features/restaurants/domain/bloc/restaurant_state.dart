import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_state.freezed.dart';

@freezed
class RestaurantState with _$RestaurantState {
  factory RestaurantState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default(false) bool isFinished,
  }) = _RestaurantState;
}
