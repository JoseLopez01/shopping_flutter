import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: AppColors.buttonsGradient,
        borderRadius: BorderRadius.circular(
          AppConstants.spacing * 2,
        ),
      ),
      child: ElevatedButton(
        onPressed: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            AppConstants.spacing * 2,
          ),
          child: const Text('Explore'),
        ),
      ),
    );
  }
}
