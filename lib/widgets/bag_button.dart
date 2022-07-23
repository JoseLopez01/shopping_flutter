import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../colors.dart';
import '../constants.dart';

class BagButton extends StatelessWidget {
  const BagButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Container(
        height: AppConstants.spacing * 4,
        width: AppConstants.spacing * 4,
        padding: EdgeInsets.all(
          AppConstants.spacing,
        ),
        decoration: BoxDecoration(
          gradient: AppColors.buttonsGradient,
          borderRadius: BorderRadius.circular(
            AppConstants.spacing * 1.375,
          ),
        ),
        child: SvgPicture.asset(
          'assets/icons/bag.svg',
          width: AppConstants.spacing * 1.75,
          height: AppConstants.spacing * 2,
        ),
      ),
    );
  }
}
