import 'package:fire_ecom/app/app_routes.dart';
import 'package:fire_ecom/app/app_theme.dart';
import 'package:fire_ecom/app/provider/language_provider.dart';
import 'package:fire_ecom/features/auth/presentation/screens/splash_screen.dart';
import 'package:fire_ecom/l10n/app_localizations.dart';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

class EcomApp extends StatelessWidget {
  const EcomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => LanguageProvider())],
      child: Consumer<LanguageProvider>(
        builder: (context, languageProvider, child) {
          return MaterialApp(
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightThemeData,
            darkTheme: AppTheme.darkThemeData,
            themeMode: ThemeMode.system,
            initialRoute: SplashScreen.routeName,
            onGenerateRoute: AppRoutes.onGenerateRoute,
            locale: languageProvider.currentLocale,
            supportedLocales: [Locale('en'), Locale('bn')],
          );
        },
      ),
    );
  }
}
