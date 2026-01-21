import 'package:shared_preferences/shared_preferences.dart';

import 'cache_helper.dart' as prefs;

class CacheHelper {
  static late  SharedPreferences prefs;
  static Future<void> init () async {

    prefs = await SharedPreferences.getInstance();
  }
   static Future<bool>setBool(bool flag) async {
  return await prefs.setBool('introduction screen', flag);
  }
  static bool? getBool(String key) {
    return prefs.getBool(key);
  }


}
