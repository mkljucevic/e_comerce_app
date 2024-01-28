import 'package:ecomerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecomerce_app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:ecomerce_app/utils/constants/colors.dart';
import 'package:ecomerce_app/utils/constants/image_strings.dart';
import 'package:ecomerce_app/utils/constants/sizes.dart';
import 'package:ecomerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(TImages.userProfileImage1),
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// Reviews
        Row(
          children: [
            const TRatingBarIndicator(rating: 4.0),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('01 Nov 2023', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        const ReadMoreText(
          'Suspendisse feugiat libero id purus eleifend malesuada. Pellentesque et maximus lorem, quis mollis massa. Quisque est velit, placerat vel velit vitae, lacinia eleifend diam. Sed suscipit nec eros sit amet laoreet. Phasellus blandit tortor neque, eu elementum tellus cursus a.',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: TColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: TColors.primary,
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        /// Company Review
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Store Admin',
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('02 Nov 2023',
                        style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                const ReadMoreText(
                  'Suspendisse feugiat libero id purus eleifend malesuada. Pellentesque et maximus lorem, quis mollis massa. Quisque est velit, placerat vel velit vitae, lacinia eleifend diam. Sed suscipit nec eros sit amet laoreet. Phasellus blandit tortor neque, eu elementum tellus cursus a.',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
      ],
    );
  }
}
