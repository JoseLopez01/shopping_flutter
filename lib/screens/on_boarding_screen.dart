import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';
import '../widgets/custom_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          const _Background(),
          Positioned(
            bottom: 0,
            child: _Card(size: size),
          )
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://via.placeholder.com/1280x920'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.33,
      padding: EdgeInsets.only(
        top: AppConstants.spacing * 2.5,
        right: AppConstants.spacing * 8,
        left: AppConstants.spacing * 8,
        bottom: AppConstants.spacing * 4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppConstants.spacing * 4.25),
          topRight: Radius.circular(AppConstants.spacing * 4.25),
        ),
        gradient: LinearGradient(
          colors: AppColors.secondary.colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          Text(
            'We have specials offers',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: Colors.white,
                ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppConstants.spacing),
          Text(
            "Let's explore some good product with special price for you.",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: AppColors.grayAccent,
                ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppConstants.spacing * 4.25),
          CustomButton(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('home_screen');
            },
            child: const Text('Explore'),
          )
        ],
      ),
    );
  }
}
