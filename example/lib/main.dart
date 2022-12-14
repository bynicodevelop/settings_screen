import 'package:flutter/material.dart';
import 'package:settings_screen/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: settingsScreen(
        [
          {
            "title": "General",
            "subtitle": "General settings",
            "onTap": () {},
            "leadingIcon": Icons.settings,
          },
          {
            "title": "Security",
            "subtitle": "Security settings",
            "onTap": () {},
            "leadingIcon": Icons.security,
          },
          {
            "title": "Notifications",
            "subtitle": "Notifications settings",
            "onTap": () {},
            "leadingIcon": Icons.notifications,
          },
          {
            "title": "About",
            "subtitle": "About settings",
            "onTap": () {},
            "leadingIcon": Icons.info,
          },
        ],
        globalTrailingIcon: Icons.arrow_circle_right_rounded,
      ),
    );
  }
}
