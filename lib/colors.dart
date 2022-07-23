import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0XFF8E43FF);
  static const Color accent = Color(0XFFFFFFFF);
  static const Color textColor = Color(0XFF32303D);
  static const Color grayAccent = Color(0XFFEFEFF6);
  static const Color blueAccent = Color(0XFFEEF6FF);
  static const Color yellowAccent = Color(0XFFFFF7F4);
  static const Color redAccent = Color(0XFFFFE4EA);
  static const Color inputBg = Color(0XFFF6F6F6);

  static const LinearGradient secondary = LinearGradient(
    colors: [Color(0XFF32303D), Color(0XFF0C0A19)],
  );
  static const LinearGradient icon = LinearGradient(
    colors: [Color(0XFFFFFFFF), Color(0XFFCBAAFF)],
  );
  static const LinearGradient buttonsGradient = LinearGradient(
    colors: [Color(0XFF8E43FF), Color(0XFF935DE6)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
