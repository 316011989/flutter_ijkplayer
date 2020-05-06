import 'dart:ui';
part 'cn.dart';
part 'en.dart';

abstract class I18n {

  I18n._();

  factory I18n(Locale locale) {
    if (locale?.languageCode == "zh") {
      return _I18nZh();
    } else {
      return _I18nEn();
    }
  }

  String get tabsScreenTitle;
  String get discoverScreenTitle;
  String get mineScreenTitle;

}

I18n get currentI18n => I18n(window.locale);
