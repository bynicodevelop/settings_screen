# settings_screen

Create a settings screen for your app.

## Usage

Full options: 

```dart
import 'package:settings_screen/settings_screen.dart';

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
        globalTrailingIcon: Icons.arrow_circle_right_rounded, // optional
      ),
    );
  }
}
```

## Rendering

<img src="https://raw.githubusercontent.com/bynicodevelop/settings_screen/16ea7af5fa4692073887ac5fee426dd788af8ebe/example/assets/capture-1.png" width="320px" />