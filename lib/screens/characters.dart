import 'package:flutter/material.dart';

class CharactersPage extends StatelessWidget {
  static const routeName = '/characters';

  const CharactersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('CharactersPage')),
    );
  }
}
