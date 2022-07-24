import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.height = 32,
    this.width = 32,
    this.padding = 4.0,
  }) : super(key: key);

  final double height;
  final double width;
  final Widget child;
  final double padding;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(AppConstants.spacing / 2),
        decoration: BoxDecoration(
          gradient: AppColors.buttonsGradient,
          borderRadius: BorderRadius.circular(
            AppConstants.spacing * 1.375,
          ),
        ),
        child: child,
      ),
    );
  }
}
