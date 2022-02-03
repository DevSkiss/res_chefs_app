import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:res_chefs_app/app/app_router/app_router.gr.dart';
import 'package:res_chefs_app/core/presentation/widgets/res_chefs_button.dart';
import 'package:res_chefs_app/core/presentation/widgets/res_chefs_text.dart';
import 'package:res_chefs_app/features/main/domain/bloc/main_bloc.dart';
import 'package:res_chefs_app/features/main/domain/bloc/main_state.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: const MainView(),
    );
  }
}

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const ResChefsText(
              'Res Chefs App',
              fontSize: 24,
            ),
            elevation: 0,
          ),
          body: Container(
            width: double.infinity,
            color: Colors.blue,
            child: state.isLoading
                ? const Center(
                    child: CupertinoActivityIndicator(),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ResChefsButton(
                        'To Resturant',
                        buttonWidth: 200,
                        color: Colors.white,
                        shapeSize: 5,
                        action: () => context.router.push(RestaurantScreen(
                          resChefsVm: state.listOfResChefsVM ?? [],
                        )),
                      ),
                      const SizedBox(height: 8),
                      ResChefsButton(
                        'To Chefs',
                        buttonWidth: 200,
                        shapeSize: 5,
                        color: Colors.white,
                        action: () => context.router
                            .push(ChefScreen(chefs: state.listOfChefs ?? [])),
                      )
                    ],
                  ),
          ),
        );
      },
    );
  }
}
