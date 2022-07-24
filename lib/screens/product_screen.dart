import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../colors.dart';
import '../constants.dart';
import '../widgets/custom_icon_button.dart';

const relation = 550 / 812;
const relationCard = 358 / 812;

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: size.height * relation,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://via.placeholder.com/1280x920',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const _BagButton(),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: size.height * relationCard,
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
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Product Name',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                              Text(
                                '\$15.00',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2!
                                    .copyWith(
                                      color: AppColors.primary,
                                    ),
                              ),
                            ],
                          ),
                          SizedBox(height: AppConstants.spacing * 2.25),
                          Column(
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
                                children: [
                                  SizedBox(
                                    height: AppConstants.spacing * 4,
                                    width: AppConstants.spacing * 4,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Container(
                                        height: double.infinity,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          gradient: AppColors.icon,
                                          borderRadius: BorderRadius.circular(
                                            AppConstants.spacing,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'S',
                                            style: TextStyle(
                                              color: AppColors.textColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BagButton extends StatelessWidget {
  const _BagButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: AppConstants.spacing * 3,
      top: AppConstants.spacing * 6,
      child: CustomIconButton(
        child: SvgPicture.asset('assets/icons/bag.svg'),
      ),
    );
  }
}
