import 'package:flutter/material.dart';
import 'package:settings_screen/components/settings_component.dart';

Widget settingsScreen(
  final List<Map<String, dynamic>> data, {
  final IconData? globalTrailingIcon,
}) {
  return SettingsComponent(
    globalTrailingIcon: globalTrailingIcon,
    data: data,
  );
}
