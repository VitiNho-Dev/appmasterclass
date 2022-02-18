import 'package:flutter/material.dart';

abstract class StateTheme {
  final ThemeMode themeMode;
  const StateTheme({
    required this.themeMode,
  });
}

class DarkStateTheme extends StateTheme {
  const DarkStateTheme() : super(themeMode: ThemeMode.dark);
}

class LightStateTheme extends StateTheme {
  const LightStateTheme() : super(themeMode: ThemeMode.light);
}

class SystemStateTheme extends StateTheme {
  const SystemStateTheme() : super(themeMode: ThemeMode.system);
}
