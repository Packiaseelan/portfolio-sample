import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class AppData {
  late Map<String, dynamic> _strings;

  init() async {
    _strings = await _parseJsonFromAssets('assets/data/temp.json');
  }

  Map<String, dynamic> getStrings(String name){
    return _strings[name];
  }

  Future<Map<String, dynamic>> _parseJsonFromAssets(String assetsPath) async {
    return rootBundle
        .loadString(assetsPath)
        .then((jsonStr) => jsonDecode(jsonStr));
  }
}
