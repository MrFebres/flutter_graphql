import 'package:flutter/material.dart';

import 'nav_option.dart';

class TransitionedContainer extends StatelessWidget {
  final String image;

  const TransitionedContainer({Key? key, required this.image})
      : super(key: key);

  final ImageProvider<Object> prehome = const AssetImage('assets/prehome.jpeg');
  final ImageProvider<Object> home =
      const AssetImage('assets/homebackground.png');

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool isPreHome = image == 'prehome';

    return TweenAnimationBuilder(
      builder: (_, double value, child) => Transform.translate(
        child: child,
        offset: Offset(0.0, value),
      ),
      child: Container(
        child: isPreHome
            ? null
            : Column(
                children: [
                  const NavOption(index: 1, name: 'Characters'),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  const NavOption(index: 2, name: 'Episodes'),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  const NavOption(index: 3, name: 'Locations'),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: isPreHome ? BoxFit.fill : BoxFit.fitHeight,
            image: isPreHome ? prehome : home,
          ),
        ),
        height: size.height,
        width: size.width,
      ),
      curve: const Interval(0.5, 1.0, curve: Curves.slowMiddle),
      duration: const Duration(seconds: 2),
      tween: Tween<double>(
          begin: isPreHome ? 0.0 : size.height,
          end: isPreHome ? -size.height : 0.0),
    );
  }
}
