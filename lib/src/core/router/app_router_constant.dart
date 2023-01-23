enum AppRoute {
  splashScreen,
  walkthroughScreen,
  listBookScreen,
  detailBookScreen,
}

extension AppRouteExtension on AppRoute{
  String get name {
    switch (this){
      case AppRoute.splashScreen:
        return 'Splash Screen';
      case AppRoute.walkthroughScreen:
        return 'Walkthrough Screen';
      case AppRoute.listBookScreen:
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
      case AppRoute.listBookScreen:
        return '/';
      case AppRoute.detailBookScreen:
        return '/detail/book';
    }
  }
}