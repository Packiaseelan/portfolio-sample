import 'package:flutter/material.dart';
import 'package:sample/config/app_theme.dart';
import 'package:sample/config/config.dart';
import 'package:sample/ui/screens/screens.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode mode, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Portfolio',
          theme: AppTheme.of(context),
          darkTheme: AppTheme.dark(context),
          themeMode: mode,
          home: const LandingScreen(),
        );
      },
    );
  }
}
