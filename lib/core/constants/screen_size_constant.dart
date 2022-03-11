import 'dart:io';

import 'package:flutter/material.dart';

class ScreenSizeConstant {
  static const double _androidWidth = 411;
  static const double _androidHeight = 731;
  static const double _iosWidth = 375;
  static const double _iosHeight = 812;

  static Size get fromPlatform {
    if (Platform.isAndroid) {
      return const Size(_androidWidth, _androidHeight);
    } else if (Platform.isIOS) {
      return const Size(_iosWidth, _iosHeight);
    } else {
      throw UnimplementedError('ScreenSizeConstant: Unimplemented Platform');
    }
  }
}
