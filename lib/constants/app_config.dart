import 'dart:ui';

class AppConfig {
  static const String name='App';
  //! locales
  static const String localePath='assets/locales';
  static const List<Locale> supportedLocales=<Locale>[Locale('fa', 'IR')];
  static const Locale startLocale=Locale('fa', 'IR');
  static bool debug=false;
}