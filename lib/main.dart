import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'core/di/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Uncomment this to enable firebase
  // await Firebase.initializeApp();
  configureDependencies();
  runApp(const App());
}
