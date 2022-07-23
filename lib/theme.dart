import 'package:flutter/material.dart';

import 'constants.dart';
import 'colors.dart';

final theme = ThemeData(
  primaryColor: AppColors.primary,
  fontFamily: 'Poppins',
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(EdgeInsets.zero),
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.all(Colors.transparent),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      minimumSize: MaterialStateProperty.all(
        const Size.fromHeight(56),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppConstants.spacing),
      borderSide: const BorderSide(color: AppColors.inputBg),
    ),
    filled: true,
    fillColor: AppColors.inputBg,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppConstants.spacing),
      borderSide: const BorderSide(color: AppColors.inputBg),
    ),
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 32,
      height: 1.1875,
      fontWeight: FontWeight.bold,
    ),
    headline2: TextStyle(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w600,
    ),
    headline3: TextStyle(
      fontSize: 16,
      height: 1.25,
      fontWeight: FontWeight.w500,
    ),
    bodyText2: TextStyle(
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w500,
    ),
    bodyText1: TextStyle(
      fontSize: 12,
      height: 20 / 12,
    ),
  ),
);
