enum AppRoutes {
  splash,
  onBoarding,
  authentication,
  verification,
  profile,
  main,
  settings,
  profiles,
  account,
  privacy,
  camera,
}

extension AppRoutersExtension on AppRoutes {
  String get path {
    switch (this) {
      case AppRoutes.splash:
        return '/splash';
      case AppRoutes.onBoarding:
        return '/on-boarding';
      case AppRoutes.authentication:
        return '/authentication';
      case AppRoutes.verification:
        return '/verification';
      case AppRoutes.profile:
        return '/profile';
      case AppRoutes.main:
        return '/main';
      case AppRoutes.settings:
        return '/settings';
      case AppRoutes.profiles:
        return '/profiles';
      case AppRoutes.account:
        return '/account';
      case AppRoutes.privacy:
        return '/privacy';
      case AppRoutes.camera:
        return '/camera';
      default:
        return '/authentication';
    }
  }
}
