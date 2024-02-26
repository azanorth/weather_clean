import 'package:flutter/material.dart';

import 'package:weather_clean/app.dart';
import 'package:weather_clean/injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(const App());
}
