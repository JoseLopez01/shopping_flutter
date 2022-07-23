import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../colors.dart';
import '../constants.dart';

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
        actions: const [NotificationButton()],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppConstants.spacing * 3,
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
            SizedBox(
              height: 232,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (_, __) {
                  return const ProductCard();
                },
              ),
            ),
            SizedBox(height: AppConstants.spacing * 2.5),
            SizedBox(
              height: 100,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (_, __) {
                  return Container(
                    width: 286,
                    margin: EdgeInsets.only(right: AppConstants.spacing * 2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(
                        AppConstants.spacing * 2.5,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: AppColors.textColor.withOpacity(0.4),
        ),
        hintText: 'Search product',
        hintStyle: TextStyle(
          color: AppColors.textColor.withOpacity(0.4),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
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
              Positioned(
                right: 0,
                bottom: -16,
                child: IconButton(
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
                ),
              )
            ],
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

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
            'https://via.placeholder.com/1280x920',
          ),
        ),
        SizedBox(width: AppConstants.spacing * 1.5),
        Text(
          'Hi, Jose',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: AppColors.textColor,
              ),
        )
      ],
    );
  }
}

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Container(
        height: AppConstants.spacing * 4,
        width: AppConstants.spacing * 4,
        padding: EdgeInsets.all(AppConstants.spacing / 2),
        decoration: BoxDecoration(
          gradient: AppColors.buttonsGradient,
          borderRadius: BorderRadius.circular(
            AppConstants.spacing * 1.375,
          ),
        ),
        child: SvgPicture.asset('assets/icons/bell.svg'),
      ),
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 91,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppConstants.spacing * 2.5),
        gradient: LinearGradient(
          colors: AppColors.secondary.colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/category.svg',
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/profile.svg',
            ),
          ),
        ],
      ),
    );
  }
}
