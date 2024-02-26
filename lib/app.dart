import 'package:flutter/material.dart';

import 'package:weather_clean/config/theme/app_themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme(),
        home: const Scaffold(
          body: Center(
            child: Text('Weather'),
          ),
        ),
      );
}
