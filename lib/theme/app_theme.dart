import 'package:flutter/material.dart';

class AppTheme {
  // Dark Mode Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: 'Extatica',

    // Color Scheme
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      primary: const Color(0xFF1DB854), // Vibrant green
      onPrimary: const Color(0xFF0A0E27),
      primaryContainer: const Color(0xFF1DB854).withOpacity(0.2),
      onPrimaryContainer: const Color(0xFF1DB854),
      secondary: const Color(0xFF7C8FEE), // Soft blue
      onSecondary: const Color(0xFF0A0E27),
      secondaryContainer: const Color(0xFF7C8FEE).withOpacity(0.2),
      onSecondaryContainer: const Color(0xFF7C8FEE),
      tertiary: const Color(0xFFFFA726), // Warm orange
      onTertiary: const Color(0xFF0A0E27),
      tertiaryContainer: const Color(0xFFFFA726).withOpacity(0.2),
      onTertiaryContainer: const Color(0xFFFFA726),
      surface: const Color(0xFF0F1419),
      onSurface: const Color(0xFFE1E1E6),
      surfaceContainerLowest: const Color(0xFF0A0E27),
      surfaceContainerLow: const Color(0xFF1A1F3A),
      surfaceContainer: const Color(0xFF252A45),
      surfaceContainerHigh: const Color(0xFF2F3554),
      surfaceContainerHighest: const Color(0xFF3A405F),
      outline: const Color(0xFF4A5078),
      outlineVariant: const Color(0xFF3A405F),
      background: const Color(0xFF0A0E27),
      error: const Color(0xFFEF5350),
      onError: const Color(0xFF0A0E27),
      errorContainer: const Color(0xFFEF5350).withOpacity(0.2),
      onErrorContainer: const Color(0xFFEF5350),
    ),

    // AppBar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFF0F1419),
      elevation: 0,
      centerTitle: false,
      titleTextStyle: const TextStyle(
        fontFamily: 'Extatica',
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Color(0xFFE1E1E6),
      ),
    ),

    // Text Themes
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 57,
        fontWeight: FontWeight.w700,
        color: Color(0xFFE1E1E6),
      ),
      displayMedium: TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.w600,
        color: Color(0xFFE1E1E6),
      ),
      displaySmall: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w600,
        color: Color(0xFFE1E1E6),
      ),
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: Color(0xFFE1E1E6),
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: Color(0xFFE1E1E6),
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Color(0xFFE1E1E6),
      ),
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Color(0xFFE1E1E6),
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Color(0xFFE1E1E6),
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xFFE1E1E6),
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Color(0xFFE1E1E6),
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xFFB8B8BD),
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Color(0xFF8A8A8F),
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color(0xFFE1E1E6),
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Color(0xFFB8B8BD),
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w400,
        color: Color(0xFF8A8A8F),
      ),
    ),

    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF1A1F3A),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF3A405F), width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF3A405F), width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF1DB854), width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFEF5350), width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFEF5350), width: 2),
      ),
      hintStyle: const TextStyle(color: Color(0xFF8A8A8F), fontSize: 14),
      labelStyle: const TextStyle(color: Color(0xFFB8B8BD), fontSize: 14),
    ),

    // Button Themes
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1DB854),
        foregroundColor: const Color(0xFF0A0E27),
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: 'Extatica',
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color(0xFF1DB854),
        side: const BorderSide(color: Color(0xFF3A405F), width: 1),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: 'Extatica',
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: const Color(0xFF1DB854),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: 'Extatica',
        ),
      ),
    ),

    // Chip Theme
    chipTheme: ChipThemeData(
      backgroundColor: const Color(0xFF1A1F3A),
      selectedColor: const Color(0xFF1DB854),
      disabledColor: const Color(0xFF3A405F),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      labelStyle: const TextStyle(
        color: Color(0xFFE1E1E6),
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      secondaryLabelStyle: const TextStyle(
        color: Color(0xFF0A0E27),
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      brightness: Brightness.dark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: Color(0xFF3A405F)),
      ),
    ),

    // Card Theme
    cardTheme: CardThemeData(
      color: const Color(0xFF1A1F3A),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: Color(0xFF3A405F), width: 1),
      ),
      margin: const EdgeInsets.all(0),
    ),

    // Divider Theme
    dividerTheme: const DividerThemeData(
      color: Color(0xFF3A405F),
      thickness: 1,
      space: 16,
    ),

    // Tab Bar Theme
    tabBarTheme: const TabBarThemeData(
      labelColor: Color(0xFF1DB854),
      unselectedLabelColor: Color(0xFF8A8A8F),
      indicatorColor: Color(0xFF1DB854),
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontFamily: 'Extatica',
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Extatica',
      ),
    ),

    // Scaffold Background
    scaffoldBackgroundColor: const Color(0xFF0F1419),
  );
}
