import 'package:flutter/material.dart';

class EpisodesPage extends StatelessWidget {
  static const routeName = '/episodes';

  const EpisodesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('EpisodesPage')),
    );
  }
}
