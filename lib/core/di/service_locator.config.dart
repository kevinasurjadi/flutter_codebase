// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../services/http_client_service.dart' as _i8;
import '../services/package_info_service.dart' as _i5;
import '../services/shared_preferences_service.dart' as _i7;
import 'register_module.dart' as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.Client>(() => registerModule.client);
  await gh.factoryAsync<_i4.PackageInfo>(() => registerModule.packageInfo,
      preResolve: true);
  gh.lazySingleton<_i5.PackageInfoService>(
      () => _i5.PackageInfoServiceImpl(get<_i4.PackageInfo>()));
  await gh.factoryAsync<_i6.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true);
  gh.lazySingleton<_i7.SharedPreferencesService>(
      () => _i7.SharedPreferencesServiceImpl(get<_i6.SharedPreferences>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.lazySingleton<_i8.HttpClientService>(() => _i8.HttpClientServiceImpl(
      get<_i3.Client>(), get<String>(instanceName: 'baseUrl')));
  return get;
}

class _$RegisterModule extends _i9.RegisterModule {}
