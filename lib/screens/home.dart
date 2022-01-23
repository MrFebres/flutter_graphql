import 'package:flutter/material.dart';

import 'package:flutter_graphql/widgets/index.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          TransitionedContainer(image: 'prehome'),
          TransitionedContainer(image: 'home'),
        ],
      ),
    );
  }
}
