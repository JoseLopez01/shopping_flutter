import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';

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
