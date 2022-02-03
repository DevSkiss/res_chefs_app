import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:res_chefs_app/features/restaurants/domain/bloc/restaurant_state.dart';

class RestaurantBloc extends Cubit<RestaurantState> {
  RestaurantBloc() : super(RestaurantState()) {
    initialized();
  }

  void initialized() async {}
}
