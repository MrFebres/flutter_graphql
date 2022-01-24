import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/characters_provider.dart';
import 'router/app_routes.dart';

// void main() => runApp(const MyApp());
void main() => runApp(MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) => CharactersProvider(),
        lazy: false,
      ),
    ], child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      title: 'Rick & Morty',
    );
  }
}
