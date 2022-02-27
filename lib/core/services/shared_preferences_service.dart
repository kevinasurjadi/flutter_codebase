import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPreferencesService {
  Future<bool> save(String key, String value);
  String? get(String key);
  Future<bool> remove(String key);
}

class SharedPreferencesServiceImpl implements SharedPreferencesService {
  final SharedPreferences sharedPreferences;

  const SharedPreferencesServiceImpl(this.sharedPreferences);

  @override
  String? get(String key) {
    return sharedPreferences.getString(key);
  }

  @override
  Future<bool> remove(String key) async {
    return await sharedPreferences.remove(key);
  }

  @override
  Future<bool> save(String key, String value) async {
    return await sharedPreferences.setString(key, value);
  }
}
