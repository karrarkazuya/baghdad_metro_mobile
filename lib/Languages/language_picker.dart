
import 'package:baghdad_metro/Languages/ar.dart';
import 'package:baghdad_metro/Languages/en.dart';
import 'package:baghdad_metro/Languages/ku.dart';
import 'package:baghdad_metro/Tools/shared_db.dart';

class LanguagePicker {
  static String langSetted = 'en';
  static AR currentAR = new AR();
  static EN currentEN = new EN();
  static KU currentKU = new KU();

  static getCurrent() {
    switch (langSetted) {
      case 'ar':
        return currentAR;
      case 'ku':
        return currentKU;
      case 'en':
        return currentEN;
      default:
        return currentAR;
    }
  }

  static setLanguage(newLanguage) {
    langSetted = newLanguage;
    SharedDB.saveString('app_language', newLanguage);
  }

  static refreshLanguage() {
    SharedDB.readString('app_language', 'en').then((newLanguage) {
      langSetted = newLanguage;
    });
  }
}
