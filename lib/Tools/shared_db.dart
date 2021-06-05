import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class SharedDB {
  static Future<String> readString(key, defaultVal) async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getString(key) ?? defaultVal;
    return value;
  }

  static Future<int> readInt(key, defaultVal) async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getInt(key) ?? defaultVal;
    return value;
  }

  static Future<bool> readBool(key) async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getBool(key) ?? false;
    return value;
  }

  static saveString(key, data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, data);
  }

  static saveInt(key, data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, data);
  }

  static saveBool(key, data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, data);
  }

  static saveJsonObject(key, Map<String, dynamic> data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, jsonEncode(data));
    prefs.setString(key+"_created_at", DateTime.now().toString());
  }

  static getJsonObject(key, Map<String, dynamic> data) async {
    final prefs = await SharedPreferences.getInstance();
    // ignore: unnecessary_null_comparison
    final value = prefs.getString(key) ?? (data != null ? jsonEncode(data) : null);
    if (value == null) return null;
    Map<String, dynamic> ndata = jsonDecode(value);
    return ndata;
  }
}
