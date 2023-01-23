import 'package:book_submission_edspert/src/features/list_screen/list_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/splash/splash_Screen.dart';
import '../../features/walkthrough/walkthrough_screen.dart';
import 'app_router_constant.dart';

class AppRouter {
  AppRouter();

  GoRouter router() => GoRouter(
      initialLocation: AppRoute.splashScreen.path,
      routes: <RouteBase>[
        GoRoute(
            path:AppRoute.splashScreen.path,
            name: AppRoute.splashScreen.name,
            builder: (context , state) {
              return const  SplashScreen();
            }
        ),
        GoRoute(
          path: AppRoute.listScreen.path,
          name: AppRoute.listScreen.name,
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: const ListScreen(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) =>
                ScaleTransition(scale: animation,
                    child: child),
          ),
        ),
        GoRoute(
            path: AppRoute.walkthroughScreen.path,
            name: AppRoute.walkthroughScreen.name,
            redirect: (context,state) async {
              final prefs = await SharedPreferences.getInstance();
              bool? firstRun = prefs.getBool('first_run');

              if (firstRun != null) {
                return AppRoute.listScreen.path;
              } else {
                return AppRoute.walkthroughScreen.path;
              }
            },
            builder: (context , state) {
              return const WalkthroughScreen();
            }
        ),
      ]);
}