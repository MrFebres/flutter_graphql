import 'package:flutter/material.dart';

import 'package:flutter_graphql/screens/index.dart';

class AppRoutes {
  static const initialRoute = HomePage.routeName;

  static Map<String, Widget Function(BuildContext)> routes = {
    HomePage.routeName: (_) => const HomePage(),
    CharactersPage.routeName: (_) => const CharactersPage(),
    EpisodesPage.routeName: (_) => const EpisodesPage(),
  };
}
