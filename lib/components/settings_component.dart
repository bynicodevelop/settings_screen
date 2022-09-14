import 'package:flutter/material.dart';
import 'package:settings_screen/components/item_setting_component.dart';

class SettingsComponent extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  final IconData? globalTrailingIcon;

  const SettingsComponent({
    super.key,
    required this.data,
    this.globalTrailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return ItemSettingComponent(
          title: data[index]['title'],
          subtitle: data[index]['subtitle'],
          onTap: data[index]['onTap'],
          trailingIcon: globalTrailingIcon ?? data[index]['icon'],
          leadingIcon: data[index]['leadingIcon'],
        );
      },
    );
  }
}
