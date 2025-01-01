import 'package:dynamic_system_colors/dynamic_system_colors.dart';
import 'package:dynamic_system_colors_example/common.dart';
import 'package:flutter/material.dart';

class AdvancedExample1 extends StatelessWidget {
  const AdvancedExample1({super.key});

  static const title = 'DynamicColorBuilder';

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        return ColoredSquare(
          lightDynamic?.primary ?? const Color(0xFFFB8C00),
          lightDynamic != null ? 'lightDynamic.primary' : 'Color(0xFFFB8C00)',
        );
      },
    );
  }
}
