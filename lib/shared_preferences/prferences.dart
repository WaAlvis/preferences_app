import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _pref;

  static String _name = '';
  static int _gender = 1;
  static bool _isDark = false;

  static Future init() async {
    _pref = await SharedPreferences.getInstance();
  }

  static String get name {
    return _pref.getString('name') ?? _name;
  }

  static set name( String value){
    _name = value;
    _pref.setString('name', value);
  }

  static int get gender {
    return _pref.getInt('gender') ?? _gender;
  }

  static set gender( int value){
    _gender = value;
    _pref.setInt('gender', value);
  }

  static bool get isDark {
    return _pref.getBool('isDark') ?? _isDark;
  }

  static set isDark( bool value){
    _isDark = value;
    _pref.setBool('isDark', value);
  }
}
