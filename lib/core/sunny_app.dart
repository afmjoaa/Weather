import 'package:flutter/material.dart';

import '../ui/screens/home/home_screen.dart';
import '../core/sunny_application.dart';
import '../ui/shared/loading/loading_cubit.dart';
import 'sunny_provider.dart';

class SunnyApp extends StatelessWidget {
  final SunnyApplication _application;

  const SunnyApp(this._application, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: 'Sunny',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue.shade100,
            foregroundColor: Colors.grey.shade900,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 117, 208, 247),
        ),
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: const Color(0xFF13B9FF),
        ),
        snackBarTheme: const SnackBarThemeData(
          behavior: SnackBarBehavior.floating,
        ),
        fontFamily: 'MohrRounded',
      ),
      home: const HomeScreen(),
      routes: _application.routes,
      debugShowCheckedModeBanner: false,
    );

    final appProvider = SunnyProvider(_application, app);
    SunnyProvider.loadingCubit = LoadingCubit();
    return appProvider;
  }
}