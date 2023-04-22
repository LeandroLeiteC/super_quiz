import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, this.widget, {super.key});

  const GradientContainer.purple(this.widget, {super.key}): colors = const [
            Color.fromARGB(255, 52, 3, 97),
            Color.fromARGB(255, 103, 30, 170)];

  final List<Color> colors;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: colors
        )
      ),
      child: widget,
    );
  }
}