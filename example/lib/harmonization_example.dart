import 'package:dynamic_system_colors/dynamic_system_colors.dart';
import 'package:dynamic_system_colors_example/common.dart';
import 'package:flutter/material.dart';

class HarmonizationExample extends StatelessWidget {
  const HarmonizationExample({super.key});

  static const title = 'Color harmonization';

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xff0b57d0);
    return Column(
      children: [
        const ColoredSquare(primaryColor, 'Primary color'),
        const ColoredSquare(Colors.red, 'Red'),
        ColoredSquare(
          Colors.red.harmonizeWith(primaryColor),
          'Red, harmonized with primary color',
        ),
      ],
    );
  }
}
