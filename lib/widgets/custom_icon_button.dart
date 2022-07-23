import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.height,
    required this.width,
    required this.child,
  }) : super(key: key);

  final double height;
  final double width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
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
