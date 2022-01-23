import 'package:flutter/material.dart';

class LocationsPage extends StatelessWidget {
  static const routeName = '/locations';

  const LocationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('LocationsPage')),
    );
  }
}
