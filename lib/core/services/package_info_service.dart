import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

abstract class PackageInfoService {
  String get appName;
  String get packageName;
  String get version;
  String get buildNumber;
  String get buildSignature;
}

@LazySingleton(as: PackageInfoService)
class PackageInfoServiceImpl implements PackageInfoService {
  final PackageInfo packageInfo;

  const PackageInfoServiceImpl(this.packageInfo);

  @override
  String get appName => packageInfo.appName;

  @override
  String get buildNumber => packageInfo.buildNumber;

  @override
  String get buildSignature => packageInfo.buildSignature;

  @override
  String get packageName => packageInfo.packageName;

  @override
  String get version => packageInfo.version;
}
