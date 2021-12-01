export 'app_theme.dart';
export 'routes.dart';
export '../data/app_data.dart';
export '../service/launcher_service.dart';
export '../utils/enumerations.dart';
export '../utils/get_size.dart';

import 'package:flutter/material.dart';

import 'package:sample/data/app_data.dart';

AppData data = AppData();

final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.dark);

bool get isDarkTheme => themeNotifier.value == ThemeMode.dark;