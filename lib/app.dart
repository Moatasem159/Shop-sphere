import 'package:flutter/material.dart';
import 'package:shop_sphere/core/routing/app_router.dart';
import 'package:shop_sphere/core/theme/app_theme.dart';

class ShopSphere extends StatelessWidget {
  final AppRouter router;
  final AppTheme theme;

  const ShopSphere({
    super.key,
    required this.router,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router.router,
      theme: theme.lightTheme,
    );
  }
}