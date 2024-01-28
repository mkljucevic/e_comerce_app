import 'package:ecomerce_app/common/widgets/icons/t_circular_icon.dart';
import 'package:ecomerce_app/utils/constants/colors.dart';
import 'package:ecomerce_app/utils/constants/sizes.dart';
import 'package:ecomerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductQuantityWithAddAndRemoveButton extends StatelessWidget {
  const TProductQuantityWithAddAndRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          icon: Iconsax.minus,
          size: TSizes.md,
          width: 32,
          height: 32,
          color: THelperFunctions.isDarkMode(context)
              ? TColors.white
              : TColors.black,
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkerGrey
              : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: TSizes.spaceBtwItems),
        const TCircularIcon(
          icon: Iconsax.add,
          size: TSizes.md,
          width: 32,
          height: 32,
          color: TColors.white,
          backgroundColor: TColors.primary,
        ),
      ],
    );
  }
}
