import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/app_routes.dart';
import 'package:islami_app/core/app_theme.dart';
import 'package:islami_app/core/cache_helper.dart';
import 'package:islami_app/home/home_screen.dart';
import 'package:islami_app/home/tabs/quran/details/sura_details_screen.dart';
import 'package:islami_app/intro_screen/intro_screen.dart';

import 'home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
  await CacheHelper.init();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en')],
      path: 'assets/translations',
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
      initialRoute: CacheHelper.getBool('introduction screen') == true
          ? HomeScreen.routeName
          : IntroScreen.routeName,
      //todo:shared prefrences
      routes: {
        IntroScreen.routeName: (context) => IntroScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        AppRoutes.suraDetailsRouteName: (context) => SuraDetailsScreen(),
      },
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
