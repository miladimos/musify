import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:musify/app/musify_application.dart';

import 'app/app_router.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const [Locale('en', 'US'), Locale('fa', 'IR')],
      child: MusifyApplication(
        router: AppRouter(),
      )
  ));
}
