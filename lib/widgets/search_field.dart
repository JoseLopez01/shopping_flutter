import 'package:flutter/material.dart';

import '../colors.dart';

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
