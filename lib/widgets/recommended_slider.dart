import 'package:flutter/material.dart';

import '../constants.dart';
import 'recommended_card.dart';

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
        padding: EdgeInsets.only(left: AppConstants.spacing * 3),
        itemBuilder: (_, __) {
          return const RecommendedCard();
        },
      ),
    );
  }
}
