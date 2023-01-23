enum AppRoute {
  splashScreen,
  walkthroughScreen,
  listScreen,
  detailBookScreen,
}

extension AppRouteExtension on AppRoute{
  String get name {
    switch (this){
      case AppRoute.splashScreen:
        return 'Splash Screen';
      case AppRoute.walkthroughScreen:
        return 'Walkthrough Screen';
      case AppRoute.listScreen:
        return 'Main Screen';
      case AppRoute.detailBookScreen:
        return 'Detail Book Screen';
    }
  }

  String get path {
    switch (this) {
      case AppRoute.splashScreen:
        return '/splash';
      case AppRoute.walkthroughScreen:
        return '/walkthrough';
      case AppRoute.listScreen:
        return '/';
      case AppRoute.detailBookScreen:
        return '/detail/book';
    }
  }
}