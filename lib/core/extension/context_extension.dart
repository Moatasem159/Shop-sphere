import 'package:flutter/material.dart';

extension SizeExtension on BuildContext {
  double get screenHeight => MediaQuery.sizeOf(this).height;
  double get screenWidth => MediaQuery.sizeOf(this).width;
}
extension ThemesExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  bool get isDark=>theme.brightness==Brightness.dark;
  Color get scaffoldBackgroundColor=>theme.scaffoldBackgroundColor;
  Color get secondaryBackgroundColor=>theme.colorScheme.secondary;
  Color get primaryColor=>theme.primaryColor;
}