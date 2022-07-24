import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../colors.dart';
import '../constants.dart';
import 'custom_icon_button.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: AppConstants.spacing * 2 + AppConstants.spacing * 3.25,
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 286,
            padding: EdgeInsets.only(
              left: (AppConstants.spacing * 10.5) - 10,
              top: AppConstants.spacing * 1.75,
            ),
            decoration: BoxDecoration(
              color: AppColors.blueAccent,
              borderRadius: BorderRadius.circular(
                AppConstants.spacing * 2.5,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Product Name'),
                Text(
                  'Sport',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: AppColors.textColor.withOpacity(0.65),
                      ),
                ),
                SizedBox(height: AppConstants.spacing * 1.75),
                const Text('\$15.00'),
              ],
            ),
          ),
          Positioned(
            left: AppConstants.spacing * -3.25,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppConstants.spacing * 2),
              child: const FadeInImage(
                height: 84,
                width: 84,
                placeholder: AssetImage('assets/images/no-image.png'),
                image: NetworkImage(
                  'https://via.placeholder.com/84x84',
                ),
              ),
            ),
          ),
          Positioned(
            bottom: AppConstants.spacing,
            right: AppConstants.spacing,
            child: CustomIconButton(
              onPressed: () {},
              child: SvgPicture.asset('assets/icons/bag.svg'),
            ),
          )
        ],
      ),
    );
  }
}
