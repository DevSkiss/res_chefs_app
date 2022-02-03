// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../core/data/models/chefs_model.dart' as _i8;
import '../../features/chefs/presentation/screens/chefs_screen.dart' as _i3;
import '../../features/main/presentation/screens/main_screen.dart' as _i1;
import '../../features/restaurants/data/models/restaurant_viewmodel.dart'
    as _i7;
import '../../features/restaurants/presentation/screens/restaurant_details_screen.dart'
    as _i4;
import '../../features/restaurants/presentation/screens/restaurant_screen.dart'
    as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainScreen());
    },
    RestaurantScreen.name: (routeData) {
      final args = routeData.argsAs<RestaurantScreenArgs>();
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child:
              _i2.RestaurantScreen(key: args.key, resChefsVm: args.resChefsVm),
          transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    ChefScreen.name: (routeData) {
      final args = routeData.argsAs<ChefScreenArgs>();
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: _i3.ChefScreen(key: args.key, chefs: args.chefs),
          transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    RestaurantDetailsScreen.name: (routeData) {
      final args = routeData.argsAs<RestaurantDetailsScreenArgs>();
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: _i4.RestaurantDetailsScreen(
              key: args.key, resChefs: args.resChefs),
          transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig('/#redirect',
            path: '/', redirectTo: '/main', fullMatch: true),
        _i5.RouteConfig(MainScreen.name, path: '/main'),
        _i5.RouteConfig(RestaurantScreen.name, path: '/restaurant'),
        _i5.RouteConfig(ChefScreen.name, path: '/chef'),
        _i5.RouteConfig(RestaurantDetailsScreen.name, path: '/restaurant-info')
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainScreen extends _i5.PageRouteInfo<void> {
  const MainScreen() : super(MainScreen.name, path: '/main');

  static const String name = 'MainScreen';
}

/// generated route for
/// [_i2.RestaurantScreen]
class RestaurantScreen extends _i5.PageRouteInfo<RestaurantScreenArgs> {
  RestaurantScreen(
      {_i6.Key? key, required List<_i7.RestaurantViewModel> resChefsVm})
      : super(RestaurantScreen.name,
            path: '/restaurant',
            args: RestaurantScreenArgs(key: key, resChefsVm: resChefsVm));

  static const String name = 'RestaurantScreen';
}

class RestaurantScreenArgs {
  const RestaurantScreenArgs({this.key, required this.resChefsVm});

  final _i6.Key? key;

  final List<_i7.RestaurantViewModel> resChefsVm;

  @override
  String toString() {
    return 'RestaurantScreenArgs{key: $key, resChefsVm: $resChefsVm}';
  }
}

/// generated route for
/// [_i3.ChefScreen]
class ChefScreen extends _i5.PageRouteInfo<ChefScreenArgs> {
  ChefScreen({_i6.Key? key, required List<_i8.ChefsModel> chefs})
      : super(ChefScreen.name,
            path: '/chef', args: ChefScreenArgs(key: key, chefs: chefs));

  static const String name = 'ChefScreen';
}

class ChefScreenArgs {
  const ChefScreenArgs({this.key, required this.chefs});

  final _i6.Key? key;

  final List<_i8.ChefsModel> chefs;

  @override
  String toString() {
    return 'ChefScreenArgs{key: $key, chefs: $chefs}';
  }
}

/// generated route for
/// [_i4.RestaurantDetailsScreen]
class RestaurantDetailsScreen
    extends _i5.PageRouteInfo<RestaurantDetailsScreenArgs> {
  RestaurantDetailsScreen(
      {_i6.Key? key, required _i7.RestaurantViewModel resChefs})
      : super(RestaurantDetailsScreen.name,
            path: '/restaurant-info',
            args: RestaurantDetailsScreenArgs(key: key, resChefs: resChefs));

  static const String name = 'RestaurantDetailsScreen';
}

class RestaurantDetailsScreenArgs {
  const RestaurantDetailsScreenArgs({this.key, required this.resChefs});

  final _i6.Key? key;

  final _i7.RestaurantViewModel resChefs;

  @override
  String toString() {
    return 'RestaurantDetailsScreenArgs{key: $key, resChefs: $resChefs}';
  }
}
