import 'package:ecomerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecomerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecomerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecomerce_app/utils/constants/sizes.dart';
import 'package:ecomerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            TProductImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// - Rating & Share
                  TRatingAndShare(),

                  /// - Price, Title, Stock & Brand
                  TProductMetaData(),

                  /// - Attributes
                  /// - Checkout Button
                  /// - Description
                  /// - Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
