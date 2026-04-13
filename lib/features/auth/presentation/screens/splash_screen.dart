import 'package:fire_ecom/app/provider/theme_provider.dart';
import 'package:fire_ecom/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../app/provider/language_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context).hello)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FilledButton(
              onPressed: () {
                final provider = Provider.of<LanguageProvider>(
                  context,
                  listen: false,
                );
                if (provider.currentLocale.languageCode == 'en') {
                  provider.setLocale(const Locale('bn'));
                } else {
                  provider.setLocale(const Locale('en'));
                }
              },
              child: const Text("Change language"),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: FilledButton(
              onPressed: () {
                final provider = Provider.of<ThemeProvider>(
                  context,
                  listen: false,
                );
                if (provider.themeMode == ThemeMode.light ||
                    provider.themeMode == ThemeMode.system) {
                  provider.setThemeMode(ThemeMode.dark);
                } else {
                  provider.setThemeMode(ThemeMode.light);
                }
              },
              child: const Text("Change theme"),
            ),
          ),
        ],
      ),
    );
  }
}
