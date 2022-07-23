import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';
import 'bag_button.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ProductCardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _ProductCardImage(),
          SizedBox(height: AppConstants.spacing * 2.75),
          Text(
            'Product Name',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: AppColors.textColor,
                ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Weekday',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: AppColors.textColor.withOpacity(
                        0.65,
                      ),
                    ),
              ),
              Text(
                '\$42.25',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: AppColors.textColor),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _ProductCardImage extends StatelessWidget {
  const _ProductCardImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(
            AppConstants.spacing * 2,
          ),
          child: const Image(
            image: NetworkImage(
              'https://via.placeholder.com/160x120',
            ),
          ),
        ),
        const Positioned(
          right: 0,
          bottom: -16,
          child: BagButton(),
        )
      ],
    );
  }
}

class _ProductCardContainer extends StatelessWidget {
  const _ProductCardContainer({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: EdgeInsets.all(AppConstants.spacing),
      padding: EdgeInsets.only(
        top: AppConstants.spacing * 1.25,
        right: AppConstants.spacing * 1.25,
        left: AppConstants.spacing * 1.25,
        bottom: AppConstants.spacing * 2.5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            offset: const Offset(0, 20),
            blurRadius: 40,
          )
        ],
        borderRadius: BorderRadius.circular(
          AppConstants.spacing * 2.5,
        ),
      ),
      child: child,
    );
  }
}
