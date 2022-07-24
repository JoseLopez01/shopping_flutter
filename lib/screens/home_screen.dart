import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../colors.dart';
import '../constants.dart';
import '../widgets/custom_bottom_nav_bar.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/products_slider.dart';
import '../widgets/profile_info.dart';
import '../widgets/recommended_slider.dart';
import '../widgets/search_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int page = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const ProfileInfo(),
        actions: [
          CustomIconButton(
            onPressed: () {},
            height: AppConstants.spacing * 4,
            width: AppConstants.spacing * 4,
            child: SvgPicture.asset('assets/icons/bell.svg'),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: _Content(),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: AppConstants.spacing * 3,
        right: AppConstants.spacing * 3,
        bottom: AppConstants.spacing * 2.5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Good Product Waiting!',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: AppColors.textColor,
                ),
          ),
          SizedBox(height: AppConstants.spacing * 2),
          const SearchField(),
          SizedBox(height: AppConstants.spacing * 2.5),
          Text(
            'Popular Product',
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: AppColors.textColor,
                ),
          ),
          const ProductsSlider(),
          SizedBox(height: AppConstants.spacing * 2.5),
          Text(
            'Recommended',
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: AppColors.textColor,
                ),
          ),
          SizedBox(height: AppConstants.spacing * 2),
          const RecommendedSlider(),
        ],
      ),
    );
  }
}
