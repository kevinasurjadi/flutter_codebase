import 'package:flutter/material.dart';

import 'app.dart';
import 'flavors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  F.appFlavor = Flavor.production;
  runApp(const App());
}
