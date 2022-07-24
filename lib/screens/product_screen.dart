import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/product_info.dart';

const relation = 550 / 812;
const relationCard = 358 / 812;

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: const [
                _BackgroundImage(),
                _BagButton(),
                Positioned(
                  bottom: 0,
                  child: ProductInfo(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * relation,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://via.placeholder.com/1280x920',
          ),
          fit: BoxFit.cover,
        ),
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
