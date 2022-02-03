import 'package:flutter/material.dart';
import 'package:res_chefs_app/app/app_router/app_router.gr.dart';
import 'app/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(ResChefsApp());
}

class ResChefsApp extends StatelessWidget {
  ResChefsApp({Key? key}) : super(key: key);

  final AppRouter _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      title: 'Restaurant Chefs App',
    );
  }
}
