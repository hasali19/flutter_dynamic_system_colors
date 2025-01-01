import 'package:dynamic_system_colors/dynamic_system_colors.dart';
import 'package:dynamic_system_colors_example/common.dart';
import 'package:flutter/material.dart';

class AccentColorExample extends StatelessWidget {
  const AccentColorExample({super.key});

  static const title = 'Accent color (desktop)';

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Color?>(
      future: DynamicColorPlugin.getAccentColor(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final color = snapshot.data;
          return color == null
              ? const Text(
                  "Accent color isn't supported on this platform",
                )
              : Column(
                  children: [
                    ColoredSquare(color, 'Accent color'),
                  ],
                );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
