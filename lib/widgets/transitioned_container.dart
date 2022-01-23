import 'package:flutter/material.dart';

class TransitionedContainer extends StatelessWidget {
  final Size size;
  final String image;

  const TransitionedContainer({
    Key? key,
    required this.image,
    required this.size,
  }) : super(key: key);

  final ImageProvider<Object> prehome = const AssetImage('assets/prehome.jpeg');
  final ImageProvider<Object> home =
      const AssetImage('assets/homebackground.png');

  @override
  Widget build(BuildContext context) => TweenAnimationBuilder(
        builder: (_, double value, child) => Transform.translate(
          child: child,
          offset: Offset(0.0, value),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: image == 'prehome' ? BoxFit.fill : BoxFit.fitHeight,
              image: image == 'prehome' ? prehome : home,
            ),
          ),
          height: size.height,
          width: size.width,
        ),
        curve: const Interval(0.5, 1.0, curve: Curves.slowMiddle),
        duration: const Duration(seconds: 2),
        tween: Tween<double>(
            begin: image == 'prehome' ? 0.0 : size.height,
            end: image == 'prehome' ? -size.height : 0.0),
      );
}
