import 'package:flutter/material.dart';

import 'package:flutter_graphql/screens/index.dart';

class AppRoutes {
  static const initialRoute = HomePage.routeName;

  static Map<String, Widget Function(BuildContext)> routes = {
    CharactersPage.routeName: (_) => const CharactersPage(),
    EpisodesPage.routeName: (_) => const EpisodesPage(),
    HomePage.routeName: (_) => const HomePage(),
    LocationsPage.routeName: (_) => const LocationsPage(),
  };
}
