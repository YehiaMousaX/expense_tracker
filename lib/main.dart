import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 37, 154, 238));
var kColorSchemeDark = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 3, 12, 89),
    brightness: Brightness.dark);
void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MaterialApp(
      home: const Expenses(),
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kColorSchemeDark,
        cardTheme: const CardTheme().copyWith(
          color: kColorSchemeDark.secondaryContainer,
          shadowColor: kColorSchemeDark.onSurface.withOpacity(0.2),
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        ),
                  elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              foregroundColor: kColorSchemeDark.primary,
              backgroundColor: kColorSchemeDark.secondaryContainer,
              shadowColor: kColorSchemeDark.onSurface.withOpacity(0.2),
              elevation: 0,
              padding: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
      ),
      theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          appBarTheme: AppBarTheme(
            backgroundColor: kColorScheme.primary,
            foregroundColor: kColorScheme.onPrimaryContainer,
          ),
          cardTheme: const CardTheme().copyWith(
            color: kColorScheme.secondaryContainer,
            shadowColor: kColorScheme.onSurface.withOpacity(0.2),
            margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              foregroundColor: kColorScheme.primary,
              backgroundColor: kColorScheme.secondaryContainer,
              shadowColor: kColorScheme.onSurface.withOpacity(0.2),
              elevation: 0,
              padding: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 204, 13, 58)),
              )),
    ),
  );
}
