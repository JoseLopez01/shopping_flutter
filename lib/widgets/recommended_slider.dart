import 'package:flutter/material.dart';

import '../constants.dart';

class RecommendedSlider extends StatelessWidget {
  const RecommendedSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
