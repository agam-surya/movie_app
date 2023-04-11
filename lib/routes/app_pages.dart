import 'package:flutter/material.dart';

import '../src/home/presentation/home_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final Map<String, Widget Function(BuildContext)> routes = {
    Routes.HOME: (_) => const HomePage()
  };
}
