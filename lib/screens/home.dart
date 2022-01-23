import 'package:flutter/material.dart';

import 'package:flutter_graphql/widgets/index.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          TransitionedContainer(image: 'prehome', size: size),
          TransitionedContainer(image: 'home', size: size),
        ],
      ),
    );
  }
}
