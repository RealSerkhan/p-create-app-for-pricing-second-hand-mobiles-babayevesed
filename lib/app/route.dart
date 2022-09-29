import 'package:flutter/material.dart';
import 'package:telefonchu/pages/models_page/models_page.dart';
import 'package:telefonchu/pages/storage_options/storage_options_page.dart';

import '../pages/home_page/home_page.dart';

class AppRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings? settings) {
    final args = settings?.arguments;

    switch (settings?.name) {
      case HomePage.routeName:
        return MaterialPageRoute(builder: (context) => const HomePage(), settings: settings);
      case ModelsPage.routeName:
        return MaterialPageRoute(
            builder: (context) => ModelsPage(brandID: (args as Map)["brand_id"] as String),
            settings: settings);
      case StorageOptionsPage.routeName:
        return MaterialPageRoute(
            builder: (context) => StorageOptionsPage(modelID: (args as Map)["model_id"] as String),
            settings: settings);
      default:
        MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(
                    child: Text("No Page"),
                  ),
                ),
            settings: settings);
    }
  }
}
