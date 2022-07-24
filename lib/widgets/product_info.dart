import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';
import 'custom_button.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      decoration: BoxDecoration(
        gradient: AppColors.secondary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppConstants.spacing * 4.25),
          topRight: Radius.circular(AppConstants.spacing * 4.25),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: AppConstants.spacing * 5,
          left: AppConstants.spacing * 3,
          right: AppConstants.spacing * 3,
          bottom: AppConstants.spacing * 4,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _NameAndPrice(),
            SizedBox(height: AppConstants.spacing * 2.25),
            const Sizes(),
            SizedBox(height: AppConstants.spacing * 2.25),
            const Text(
              'This is weekdays design-your go-to for all the latest trends, no matter who you are.',
              style: TextStyle(color: AppColors.blueAccent),
            ),
            SizedBox(height: AppConstants.spacing * 3),
            CustomButton(
              onTap: () {},
              child: const Text('Add to cart'),
            )
          ],
        ),
      ),
    );
  }
}

class Sizes extends StatelessWidget {
  const Sizes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size',
          style: TextStyle(
            color: AppColors.grayAccent.withOpacity(0.8),
          ),
        ),
        SizedBox(height: AppConstants.spacing),
        Row(
          children: const [
            SizeItem(size: 'S', isSelected: true),
            SizeItem(size: 'M'),
            SizeItem(size: 'L'),
            SizeItem(size: 'XL'),
          ],
        )
      ],
    );
  }
}

class SizeItem extends StatelessWidget {
  const SizeItem({
    Key? key,
    required this.size,
    this.isSelected = false,
  }) : super(key: key);

  final String size;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConstants.spacing * 4,
      width: AppConstants.spacing * 4,
      margin: EdgeInsets.only(right: AppConstants.spacing * 1.5),
      child: ElevatedButton(
        onPressed: () {},
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: isSelected ? AppColors.icon : null,
            borderRadius: BorderRadius.circular(
              AppConstants.spacing,
            ),
            border: isSelected ? null : Border.all(color: AppColors.primary),
          ),
          child: Center(
            child: Text(
              size,
              style: TextStyle(
                color: isSelected ? AppColors.textColor : Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NameAndPrice extends StatelessWidget {
  const _NameAndPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Product Name',
          style: Theme.of(context).textTheme.headline1!.copyWith(
                color: Colors.white,
              ),
        ),
        Text(
          '\$15.00',
          style: Theme.of(context).textTheme.headline2!.copyWith(
                color: AppColors.primary,
              ),
        ),
      ],
    );
  }
}
