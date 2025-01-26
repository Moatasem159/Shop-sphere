// Place fonts/NavigationBarIcon.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: NavigationBarIcon
//      fonts:
//       - asset: fonts/NavigationBarIcon.ttf
import 'package:flutter/widgets.dart';

class NavigationBarIcon {
  NavigationBarIcon._();

  static const String _fontFamily = 'NavigationBarIcon';

  static const IconData account = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData cart = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData saved = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData search = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData home = IconData(0xe904, fontFamily: _fontFamily);
}