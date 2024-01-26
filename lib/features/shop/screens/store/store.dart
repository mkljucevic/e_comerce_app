import 'package:ecomerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecomerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecomerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecomerce_app/common/widgets/images/t_circular_image.dart';
import 'package:ecomerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecomerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecomerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecomerce_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecomerce_app/utils/constants/colors.dart';
import 'package:ecomerce_app/utils/constants/enums.dart';
import 'package:ecomerce_app/utils/constants/image_strings.dart';
import 'package:ecomerce_app/utils/constants/sizes.dart';
import 'package:ecomerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCartCounterIcon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              automaticallyImplyLeading: false,
              floating: true,
              backgroundColor: dark ? TColors.black : TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    const SizedBox(height: TSizes.spaceBtwItems),

                    /// Search Bar
                    const TSearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),

                    const SizedBox(height: TSizes.spaceBtwSections),

                    /// Featured Brands
                    TSectionHeading(
                      title: 'Featured Brands',
                      showActionButton: true,
                      onPressed: () {},
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                    TGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: TRoundedContainer(
                            padding: const EdgeInsets.all(TSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                ///  Icon
                                Flexible(
                                  child: TCircularImage(
                                    image: TImages.clothIcon,
                                    backgroundColor: Colors.transparent,
                                    overlayColor:
                                        dark ? TColors.white : TColors.black,
                                  ),
                                ),
                                const SizedBox(width: TSizes.spaceBtwItems / 2),

                                /// Text
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const TBrandTitleWithVerifiedIcon(
                                        title: 'Nike',
                                        brandTextSize: TextSizes.large,
                                      ),
                                      Text(
                                        '256 products',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
