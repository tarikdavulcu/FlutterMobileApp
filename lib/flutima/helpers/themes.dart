import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_bundle/flutima/helpers/colors.dart';
import 'package:ultimate_bundle/providers/theme_provider.dart';

ThemeData themeLight(BuildContext context) {
  final theme = Provider.of<ThemeProvider>(context);

  Color primaryLight(ThemeUIKit val) {
    switch (val) {
      case ThemeUIKit.barbera:
        return PrimaryColorLight.barbera;
      case ThemeUIKit.belila:
        return PrimaryColorLight.belila;
      case ThemeUIKit.bellcommerce:
        return PrimaryColorLight.bellcommerce;
      case ThemeUIKit.coffiy:
        return PrimaryColorLight.coffiy;
      case ThemeUIKit.foodiy:
        return PrimaryColorLight.foodiy;
      case ThemeUIKit.furney:
        return PrimaryColorLight.furney;
      case ThemeUIKit.lestate:
        return PrimaryColorLight.lestate;
      case ThemeUIKit.movlix:
        return PrimaryColorLight.movlix;
      case ThemeUIKit.shuppy:
        return PrimaryColorLight.shuppy;
      case ThemeUIKit.treshop:
        return PrimaryColorLight.treshop;
    }
  }

  return ThemeData(
    brightness: Brightness.light,
    primaryIconTheme: const IconThemeData(
      color: ColorLight.fontTitle,
      size: 20,
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: primaryLight(theme.themeUIKit),
      onPrimary: primaryLight(theme.themeUIKit),
      secondary: primaryLight(theme.themeUIKit),
      onSecondary: primaryLight(theme.themeUIKit),
      error: ColorLight.error,
      onError: ColorLight.error,
      background: ColorLight.background,
      onBackground: ColorLight.background,
      surface: ColorLight.background,
      onSurface: ColorLight.background,
    ),
    primaryColor: primaryLight(theme.themeUIKit),
    cardColor: ColorLight.card,
    disabledColor: ColorLight.disabled,
    hintColor: ColorLight.hint,
    indicatorColor: primaryLight(theme.themeUIKit),
    buttonTheme: ButtonThemeData(
      disabledColor: ColorLight.disabledButton,
      buttonColor: primaryLight(theme.themeUIKit),
      height: 45,
    ),
    iconTheme: const IconThemeData(color: ColorLight.fontTitle),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: primaryLight(theme.themeUIKit),
    ),
    scaffoldBackgroundColor: ColorLight.background,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headlineLarge: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      headlineMedium: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      headlineSmall: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      labelLarge: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      titleMedium: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      titleSmall: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 10,
        fontWeight: FontWeight.normal,
      ),
      bodyLarge: GoogleFonts.poppins(
        color: ColorLight.fontSubtitle,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: ColorLight.fontSubtitle,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: GoogleFonts.poppins(
        color: ColorLight.fontSubtitle,
        fontSize: 10,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}

ThemeData themeDark(BuildContext context) {
  final theme = Provider.of<ThemeProvider>(context);

  Color primaryDark(ThemeUIKit val) {
    switch (val) {
      case ThemeUIKit.barbera:
        return PrimaryColorDark.barbera;
      case ThemeUIKit.belila:
        return PrimaryColorDark.belila;
      case ThemeUIKit.bellcommerce:
        return PrimaryColorDark.bellcommerce;
      case ThemeUIKit.coffiy:
        return PrimaryColorDark.coffiy;
      case ThemeUIKit.foodiy:
        return PrimaryColorDark.foodiy;
      case ThemeUIKit.furney:
        return PrimaryColorDark.furney;
      case ThemeUIKit.lestate:
        return PrimaryColorDark.lestate;
      case ThemeUIKit.movlix:
        return PrimaryColorDark.movlix;
      case ThemeUIKit.shuppy:
        return PrimaryColorDark.shuppy;
      case ThemeUIKit.treshop:
        return PrimaryColorDark.treshop;
    }
  }

  return ThemeData(
    brightness: Brightness.dark,
    primaryIconTheme: const IconThemeData(
      color: ColorDark.fontTitle,
      size: 20,
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: primaryDark(theme.themeUIKit),
      onPrimary: primaryDark(theme.themeUIKit),
      secondary: primaryDark(theme.themeUIKit),
      onSecondary: primaryDark(theme.themeUIKit),
      error: ColorDark.error,
      onError: ColorDark.error,
      background: ColorDark.background,
      onBackground: ColorDark.background,
      surface: ColorDark.background,
      onSurface: ColorDark.background,
    ),
    primaryColor: primaryDark(theme.themeUIKit),
    cardColor: ColorDark.card,
    disabledColor: ColorDark.disabled,
    hintColor: ColorDark.hint,
    indicatorColor: primaryDark(theme.themeUIKit),
    buttonTheme: ButtonThemeData(
      disabledColor: ColorDark.disabledButton,
      buttonColor: primaryDark(theme.themeUIKit),
      height: 45,
    ),
    iconTheme: const IconThemeData(color: ColorDark.fontTitle),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: primaryDark(theme.themeUIKit),
    ),
    scaffoldBackgroundColor: ColorDark.background,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headlineLarge: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      headlineMedium: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      headlineSmall: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      labelLarge: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      titleMedium: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      titleSmall: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 10,
        fontWeight: FontWeight.normal,
      ),
      bodyLarge: GoogleFonts.poppins(
        color: ColorDark.fontSubtitle,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: ColorDark.fontSubtitle,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: GoogleFonts.poppins(
        color: ColorDark.fontSubtitle,
        fontSize: 10,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
