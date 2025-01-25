import 'package:flutter/material.dart';
class AppFontFamily {
  const AppFontFamily._();
  static const String dmSans = 'DMSans';
}
class AppTextStyles {
  const AppTextStyles._();

  // Headlines
  static const TextStyle h1SemiBold = TextStyle(
    fontFamily: AppFontFamily.dmSans,
    fontSize: 64,
    fontWeight: FontWeight.w600,
    height: 0.8,
    letterSpacing: -0.5,
  );
  static const TextStyle h2SemiBold = TextStyle(
    fontFamily: AppFontFamily.dmSans,
    fontSize: 32,
    fontWeight: FontWeight.w600,
    height: 1,
    letterSpacing: -0.5,
  );
  static const TextStyle h3SemiBold = TextStyle(
    fontFamily: AppFontFamily.dmSans,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.2,
    letterSpacing: 0,
  );
  static const TextStyle h4SemiBold = TextStyle(
    fontFamily: AppFontFamily.dmSans,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.2,
    letterSpacing: 0,
  );
  static const TextStyle h4Medium = TextStyle(
    fontFamily: AppFontFamily.dmSans,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    height: 1.2,
    letterSpacing: 0,
  );

  // Body
  static const TextStyle b1Regular = TextStyle(
    fontFamily: AppFontFamily.dmSans,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.4,
    letterSpacing: 0,
  );
  static const TextStyle b1Medium = TextStyle(
    fontFamily: AppFontFamily.dmSans,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.4,
    letterSpacing: 0,
  );
  static const TextStyle b1SemiBold = TextStyle(
    fontFamily: AppFontFamily.dmSans,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.4,
    letterSpacing: 0,
  );
  static const TextStyle b2Regular = TextStyle(
    fontFamily: AppFontFamily.dmSans,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.4,
    letterSpacing: 0,
  );
  static const TextStyle b2Medium = TextStyle(
    fontFamily: AppFontFamily.dmSans,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4,
    letterSpacing: 0,
  );
  static const TextStyle b2SemiBold = TextStyle(
    fontFamily: AppFontFamily.dmSans,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.4,
    letterSpacing: 0,
  );
  static const TextStyle b3Regular = TextStyle(
    fontFamily: AppFontFamily.dmSans,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.4,
    letterSpacing: 0,
  );
  static const TextStyle b3Medium = TextStyle(
    fontFamily: AppFontFamily.dmSans,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.4,
    letterSpacing: 0,
  );
  static const TextStyle b3SemiBold = TextStyle(
    fontFamily: AppFontFamily.dmSans,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 1.4,
    letterSpacing: 0,
  );
}