import 'package:ecomerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecomerce_app/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ecomerce_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecomerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecomerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecomerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecomerce_app/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:ecomerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddTocart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            const TProductImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: const EdgeInsets.only(
                right: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// - Rating & Share
                  const TRatingAndShare(),

                  /// - Price, Title, Stock & Brand
                  const TProductMetaData(),

                  /// - Attributes
                  const TProductAttributes(),

                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// - Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// - Description
                  const TSectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc massa neque, dictum ut scelerisque sed, blandit sit amet risus. Curabitur luctus, libero non fringilla eleifend, arcu eros vehicula lorem, sed imperdiet enim elit non nunc. Ut at rutrum ex. Curabitur tortor nibh, fringilla eget tellus id, pulvinar feugiat mi.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Shome more',
                    trimExpandedText: ' Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// - Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                          title: 'Reviews(199)', showActionButton: false),
                      IconButton(
                        onPressed: () =>
                            Get.to(() => const ProductReviewsScreen()),
                        icon: const Icon(Iconsax.arrow_right_3, size: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
