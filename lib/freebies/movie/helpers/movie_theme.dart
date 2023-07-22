part of '../movie_page.dart';

ThemeData _themeDark(BuildContext context) {
  return ThemeData(
    brightness: Brightness.dark,
    primaryIconTheme: const IconThemeData(
      color: ColorDark.fontTitle,
      size: 20,
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: ColorDark.primary,
      onPrimary: ColorDark.primary,
      secondary: ColorDark.secondary,
      onSecondary: ColorDark.secondary,
      error: ColorDark.error,
      onError: ColorDark.error,
      background: ColorDark.background,
      onBackground: ColorDark.background,
      surface: ColorDark.background,
      onSurface: ColorDark.background,
    ),
    primaryColor: ColorDark.primary,
    cardColor: ColorDark.card,
    disabledColor: ColorDark.disabled,
    hintColor: ColorDark.hint,
    indicatorColor: ColorDark.primary,
    buttonTheme: const ButtonThemeData(
      disabledColor: ColorDark.disabledButton,
      buttonColor: ColorDark.primary,
      height: 45,
    ),
    iconTheme: const IconThemeData(color: ColorDark.fontTitle),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorDark.primary,
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
