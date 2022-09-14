import 'package:flutter/material.dart';

class ItemSettingComponent extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function() onTap;
  final IconData? trailingIcon;
  final IconData? leadingIcon;

  const ItemSettingComponent({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.trailingIcon,
    this.leadingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(
        trailingIcon ?? Icons.arrow_forward_ios,
      ),
      leading: SizedBox(
        height: double.infinity,
        child: leadingIcon != null ? Icon(leadingIcon) : null,
      ),
    );
  }
}
