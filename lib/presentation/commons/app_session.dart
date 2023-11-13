import 'package:shared_preferences/shared_preferences.dart';

class AppSession {
  AppSession(this._pref);
  final SharedPreferences _pref;
  static const _cityName = 'cityName';

  String? get cityName => _pref.getString(_cityName);

  Future<void> saveCityName(String n) async {
    _pref.setString(_cityName, n);
  }
}
