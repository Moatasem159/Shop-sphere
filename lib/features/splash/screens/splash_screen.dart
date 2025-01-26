import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_sphere/core/theme/app_colors.dart';
import 'package:shop_sphere/core/theme/app_theme.dart';
import 'package:shop_sphere/features/splash/widgets/splash_screen_widgets/splash_screen_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  //TODO: make responsive
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppTheme.systemUiOverlayStyle(context).copyWith(
        statusBarColor: AppColors.primary900,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: AppColors.primary900,
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.primary900,
          body: SplashScreenBody(),
        ),
      ),
    );
  }
}