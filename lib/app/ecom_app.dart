import 'package:fire_ecom/app/app_theme.dart';
import 'package:fire_ecom/app/app_routes.dart';
import 'package:flutter/material.dart';

class EcomApp extends StatelessWidget {
  const EcomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fire Ecom',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightThemeData,
      darkTheme: AppTheme().darkThemeData,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
