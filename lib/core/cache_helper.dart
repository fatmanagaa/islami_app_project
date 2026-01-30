import 'package:shared_preferences/shared_preferences.dart';

import 'cache_helper.dart' as prefs;

class CacheHelper {
  static late SharedPreferences prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> setBool(bool flag) async {
    return await prefs.setBool('introduction screen', flag);
  }

  static bool? getBool(String key) {
    return prefs.getBool(key);
  }

  static Future<void> saveList(int index) async {
    /// [0]
    /// [0, 1]
    /// [0, 1, 2]

    List<int> previousList = getList('items');

    previousList.add(index);

    List<String> data = previousList.map((e) => e.toString()).toList();

    await prefs.setStringList('items', data);
  }

  static List<int> getList(String key) {
    List<String>? list = prefs.getStringList(key);

    if (list == null) return [];

    return list.map((e) => int.parse(e)).toList();
  }

  static List<int>? getStringList(String key) {
    List<String>? data = prefs.getStringList(key);
    return data?.map((e) => int.parse(e)).toSet().toList() ?? [];
  }
}
