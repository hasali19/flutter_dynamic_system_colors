import 'dart:ui';

import 'package:dynamic_system_colors/dynamic_system_colors.dart';
import 'package:dynamic_system_colors/test_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('getCorePalette', () async {
    final sampleFromListCorePalette = generateCorePalette((i) => i);

    DynamicColorTestingUtils.setMockDynamicColors(
      corePalette: sampleFromListCorePalette,
    );
    final colors = await DynamicColorPlugin.getCorePalette();
    expect(colors, sampleFromListCorePalette);
  });

  test('getCorePalette returns null', () async {
    DynamicColorTestingUtils.setMockDynamicColors(
      corePalette: null,
    );
    final colors = await DynamicColorPlugin.getCorePalette();
    expect(colors, equals(null));
  });

  test('getColorSchemes', () async {
    DynamicColorTestingUtils.setMockDynamicColors(
      colorSchemes: sampleColorSchemesList,
    );
    final colorSchemes = await DynamicColorPlugin.getColorSchemes();
    expect(colorSchemes?.dark.primary, equals(const Color(0x00000055)));
  });

  test('getColorSchemes returns null', () async {
    DynamicColorTestingUtils.setMockDynamicColors(
      colorSchemes: null,
    );
    final colorSchemes = await DynamicColorPlugin.getColorSchemes();
    expect(colorSchemes, equals(null));
  });

  test('getAccentColor', () async {
    const color = Color.fromARGB(12, 24, 123, 53);

    DynamicColorTestingUtils.setMockDynamicColors(
      accentColor: color,
    );
    final result = await DynamicColorPlugin.getAccentColor();
    expect(result, color);
  });

  test('getAccentColor returns null', () async {
    DynamicColorTestingUtils.setMockDynamicColors(accentColor: null);

    final colors = await DynamicColorPlugin.getAccentColor();
    expect(colors, equals(null));
  });
}
