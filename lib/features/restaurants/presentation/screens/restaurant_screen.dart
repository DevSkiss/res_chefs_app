import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:res_chefs_app/app/app_router/app_router.gr.dart';
import 'package:res_chefs_app/core/presentation/widgets/res_chefs_text.dart';
import 'package:res_chefs_app/features/restaurants/data/models/restaurant_viewmodel.dart';
import 'package:res_chefs_app/features/restaurants/domain/bloc/restaurant_bloc.dart';
import 'package:res_chefs_app/features/restaurants/domain/bloc/restaurant_state.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({Key? key, required this.resChefsVm})
      : super(key: key);

  final List<RestaurantViewModel> resChefsVm;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RestaurantBloc(),
      child: RestaurantView(
        resChefsVm: resChefsVm,
      ),
    );
  }
}

class RestaurantView extends StatefulWidget {
  const RestaurantView({Key? key, required this.resChefsVm}) : super(key: key);

  final List<RestaurantViewModel> resChefsVm;

  @override
  _RestaurantViewState createState() => _RestaurantViewState();
}

class _RestaurantViewState extends State<RestaurantView> {
  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return BlocConsumer<RestaurantBloc, RestaurantState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            elevation: 0,
            title: const ResChefsText(
              'Restaurant List',
              fontSize: 24,
            ),
          ),
          body: Column(
            children: <Widget>[
              ...List.generate(
                widget.resChefsVm.length,
                (index) => GestureDetector(
                  onTap: () => context.router.push(RestaurantDetailsScreen(
                      resChefs: widget.resChefsVm[index])),
                  child: Container(
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    child: ResChefsText(
                      widget.resChefsVm[index].name,
                      color: Colors.black87,
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
