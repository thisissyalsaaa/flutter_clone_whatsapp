enum AppLanguage {
  english,
  indonesia,
  afrikans,
  shqip,
}

extension AppLanguageExtension on AppLanguage {
  String get name {
    switch (this) {
      case AppLanguage.english:
        return 'English';
      case AppLanguage.indonesia:
        return 'Indonesia';
      case AppLanguage.afrikans:
        return 'Afrikans';
      case AppLanguage.shqip:
        return 'Shqip';
      default:
        return '';
    }
  }
}
