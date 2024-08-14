import 'package:apna_ai_app/utils/theme/custom_theme/appbar_theme.dart';
import 'package:apna_ai_app/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:apna_ai_app/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:apna_ai_app/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:apna_ai_app/utils/theme/custom_theme/text_field_theme.dart';

import 'package:flutter/material.dart';
import 'custom_theme/chip_theme.dart';
import 'custom_theme/elevated_button_theme.dart';
import 'custom_theme/text_theme.dart';

class WAppTheme {
  WAppTheme._();

// ========== Light Theme ==========
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Euclid Circular A",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: WTextTheme.lightTextTheme,
    chipTheme: WChipTheme.lightChipTheme,
    appBarTheme: WAppBarTheme.lightAppBarTheme,
    checkboxTheme: WCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: WBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: WElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: WOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: WTextFormFieldTheme.lightInputDecorationTheme,
  );

// ========== Dark Theme ==========
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Euclid Circular A",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: WTextTheme.darkTextTheme,
    chipTheme: WChipTheme.darkChipTheme,
    appBarTheme: WAppBarTheme.darkAppBarTheme,
    checkboxTheme: WCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: WBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: WElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: WOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: WTextFormFieldTheme.darkInputDecorationTheme,
  );
}
