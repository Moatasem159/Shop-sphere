import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_sphere/app.dart';
import 'package:shop_sphere/core/routing/app_router.dart';
import 'package:shop_sphere/core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(
    ShopSphere(
      theme: const AppTheme(),
      router: AppRouter(),
    ),
  );
}