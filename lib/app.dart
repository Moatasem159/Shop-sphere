import 'package:flutter/material.dart';
import 'package:shop_sphere/core/routing/app_router.dart';

class ShopSphere extends StatelessWidget {
  final AppRouter router;

  const ShopSphere({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router.router,
    );
  }
}