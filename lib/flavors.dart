enum Flavor {
  staging,
  production,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.staging:
        return 'Movie App';
      case Flavor.production:
        return 'Movie App';
      default:
        return 'title';
    }
  }

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.staging:
        return 'https://api.themoviedb.org/3';
      case Flavor.production:
        return 'https://api.themoviedb.org/3';
      default:
        return 'https://api.themoviedb.org/3';
    }
  }
}
