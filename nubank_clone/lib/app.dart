import 'package:flutter/material.dart';
import 'package:nubank_clone/core/theme/app_theme.dart';

import 'src/pages/home/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clone Nubank',
      theme: AppTheme.theme,
      initialRoute: '/',
      routes: {'/': (_) => const HomePage()},
    );
  }
}
