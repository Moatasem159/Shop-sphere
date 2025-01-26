import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_sphere/core/extension/context_extension.dart';
import 'package:shop_sphere/core/theme/app_colors.dart';

class AppTheme {
  const AppTheme();

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColors.primary0,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary900,
          brightness: Brightness.light,
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(color: AppColors.primary0),
      );

  ///Function to change system navigation bar and status bar color
  ///in light and dark themes.
  static SystemUiOverlayStyle systemUiOverlayStyle(BuildContext context) =>
      context.theme.brightness == Brightness.light
          ? _whiteSystemUiOverlayStyle
          : _darkSystemUiOverlayStyle;
  static final SystemUiOverlayStyle _whiteSystemUiOverlayStyle =
      SystemUiOverlayStyle.light.copyWith(
    statusBarColor: AppColors.primary0,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: AppColors.primary0,
  );
  static final SystemUiOverlayStyle _darkSystemUiOverlayStyle = SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: AppColors.primary900,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: AppColors.primary900,
  );
}