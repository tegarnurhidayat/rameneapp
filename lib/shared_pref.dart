import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static SharedPreferences? pref;

  static init() async => pref = await SharedPreferences.getInstance();
  }
