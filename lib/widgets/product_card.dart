import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../colors.dart';
import '../constants.dart';
import '../screens/product_screen.dart';
import 'custom_icon_button.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return const ProductScreen();
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0, 1);
        const end = Offset.zero;

        final tween = Tween(begin: begin, end: end).chain(
          CurveTween(curve: Curves.ease),
        );

        final offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return _ProductCardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ProductCardImage(
            onBuy: () {
              FocusScope.of(context).unfocus();
              Navigator.of(context).push(_createRoute());
            },
          ),
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
    required this.onBuy,
  }) : super(key: key);

  final VoidCallback onBuy;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(
            AppConstants.spacing * 2,
          ),
          child: const FadeInImage(
            height: 120,
            width: 160,
            placeholder: AssetImage('assets/images/no-image.png'),
            image: NetworkImage(
              'https://via.placeholder.com/160x120',
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: -16,
          child: CustomIconButton(
            onPressed: onBuy,
            padding: AppConstants.spacing,
            child: SvgPicture.asset('assets/icons/bag.svg'),
          ),
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
