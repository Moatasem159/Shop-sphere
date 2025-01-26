import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
extension LocalizationExtentions on BuildContext {
  AppLocalizations get locale => AppLocalizations.of(this)!;
  bool get isEnglish => AppLocalizations.of(this)!.localeName=='en';
}