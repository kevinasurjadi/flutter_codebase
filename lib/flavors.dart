enum Flavor {
  development,
  production,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.development:
        return '(Dev) Flutter Codebase';
      case Flavor.production:
        return 'Flutter Codebase';
      default:
        return 'title';
    }
  }
}
