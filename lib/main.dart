import 'package:flutter/material.dart';
import 'package:goraiya/features/view/login_view.dart';

import 'package:goraiya/features/view/splash_view.dart';

import 'theme/app_theme.dart';

void main() {
  runApp(const Goraiya());
}

class Goraiya extends StatelessWidget {
  const Goraiya({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
        home: const SplashView(),
        routes: {
          '/login': (context) => const LoginView(),
        });
  }
}
