import 'package:flutter/material.dart';

import 'package:flutter_graphql/helpers/index.dart';

class NavOption extends StatefulWidget {
  const NavOption({Key? key, required this.name, required this.index})
      : super(key: key);

  final int index;
  final String name;

  @override
  State<NavOption> createState() => _NavOptionState();
}

class _NavOptionState extends State<NavOption>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _translateY;
  late Animation<double> _opacity;

  @override
  void initState() {
    final timer = 3500 + (250 * widget.index);

    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: timer));

    _translateY = Tween(begin: 50.0, end: 0.0).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.6, 1.0, curve: Curves.bounceOut)));

    _opacity = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.6, 1.0, curve: Curves.easeOut)));

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) => Transform.translate(
        child: Opacity(
          child: child,
          opacity: _opacity.value,
        ),
        offset: Offset(0.0, _translateY.value),
      ),
      child: _OptionContainer(name: widget.name, size: size),
    );
  }
}

class _OptionContainer extends StatelessWidget {
  const _OptionContainer({
    Key? key,
    required this.name,
    required this.size,
  }) : super(key: key);

  final String name;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        child: Text(
          name,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        decoration: BoxDecoration(
            border: Border.all(
              color: HexColor('#02b1c8'),
              width: 2,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            image: DecorationImage(
                colorFilter:
                    const ColorFilter.mode(Colors.black54, BlendMode.darken),
                fit: BoxFit.cover,
                image: optMenu[name]!)),
        height: size.height * 0.17,
        width: size.width * 0.64,
      ),
      onTap: () {
        Navigator.pushNamed(context, '/${name.toLowerCase()}');
      },
    );
  }
}
