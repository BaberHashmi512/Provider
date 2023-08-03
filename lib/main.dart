import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider/count_provider.dart';
import 'package:provider_app/provider/example_one_provider.dart';
import 'package:provider_app/provider/favourite_provider.dart';
import 'package:provider_app/provider/theme_change_provider.dart';
import 'package:provider_app/screen/dark_theme.dart';
import 'package:provider_app/screen/value_notify_listener.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
          ChangeNotifierProvider(create: (_) => FavouriteItemProvider()),
          ChangeNotifierProvider(create: (_) => ThemeChanger()),
        ],
        child: Builder(builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChanger>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.red,
              // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              // useMaterial3: true,
            ),
            darkTheme: ThemeData(
                brightness: Brightness.dark, primarySwatch: Colors.purple),
            home:  NotifyListenerScreen(),
          );
        }));
  }
}
