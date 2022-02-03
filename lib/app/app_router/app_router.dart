import 'package:auto_route/auto_route.dart';
import 'package:res_chefs_app/features/chefs/presentation/screens/chefs_screen.dart';
import 'package:res_chefs_app/features/main/presentation/screens/main_screen.dart';
import 'package:res_chefs_app/features/restaurants/presentation/screens/restaurant_details_screen.dart';
import 'package:res_chefs_app/features/restaurants/presentation/screens/restaurant_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute<dynamic>>[
    AutoRoute<dynamic>(
      path: '/main',
      initial: true,
      page: MainScreen,
    ),
    CustomRoute<dynamic>(
      path: '/restaurant',
      page: RestaurantScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute<dynamic>(
      path: '/chef',
      page: ChefScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute<dynamic>(
      path: '/restaurant-info',
      page: RestaurantDetailsScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
  ],
)
class $AppRouter {}
