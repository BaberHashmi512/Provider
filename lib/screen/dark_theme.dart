import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider/theme_change_provider.dart';

class DarkThemScreen extends StatefulWidget {
  const DarkThemScreen({Key? key}) : super(key: key);

  @override
  State<DarkThemScreen> createState() => _DarkThemScreenState();
}

class _DarkThemScreenState extends State<DarkThemScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Changer"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
              title: const Text("Light Mood"),
              value: ThemeMode.light,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme),
          RadioListTile<ThemeMode>(
              title: const Text("Dark Mood"),
              value: ThemeMode.dark,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme),
          RadioListTile<ThemeMode>(
              title: const Text("System Mood"),
              value: ThemeMode.system,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme),
        ],
      ),
    );
  }
}
