import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:sample/config/config.dart';
import 'package:sample/models/aasset_path.dart';

class AppData {
  late Map<String, dynamic> _strings = {'':''};
  late AssetPath path;

  String get mapPath =>
      '${path.lottie}/map-${isDarkTheme ? 'dark' : 'light'}.json';

  String get constructionPath =>
      '${path.lottie}/construction-${isDarkTheme ? 'dark' : 'light'}.json';

  Future<void> init() async {
    path = AssetPath(
      data: 'assets/data/temp.json',
      icon: 'assets/icons',
      lottie: 'assets/lottie',
    );

    _strings = await _parseJsonFromAssets(path.data);
  }

  Map<String, dynamic> getStrings(String name) {
    return _strings[name];
  }

  Future<Map<String, dynamic>> _parseJsonFromAssets(String assetsPath) async {
    return rootBundle
        .loadString(assetsPath)
        .then((jsonStr) => jsonDecode(jsonStr));
  }
}
