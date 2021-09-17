import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

fontRegistry([String fontsPath = 'google_fonts', String licensePath = 'google_fonts/LICENSE.txt']) {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString(licensePath);
    yield LicenseEntryWithLineBreaks([fontsPath], license);
  });
}