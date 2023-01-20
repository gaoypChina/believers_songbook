import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SongSettings extends ChangeNotifier {
  double _fontSize = 22; // Default font size

  double get fontSize => _fontSize;

  Future<void> setFontSize(double size) async {
    _fontSize = size;
    notifyListeners();
    final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    prefs.setDouble('fontSize', size);
  }
}
