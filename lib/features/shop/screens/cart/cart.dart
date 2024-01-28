import 'package:ecomerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecomerce_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:ecomerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:ecomerce_app/common/widgets/texts/product_price_text.dart';
import 'package:ecomerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_, __) =>
              const SizedBox(height: TSizes.spaceBtwSections),
          itemCount: 7,
          itemBuilder: (_, index) => const Column(
            children: [
              TCartItem(),
              SizedBox(height: TSizes.spaceBtwItems),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      /// Extra space
                      SizedBox(width: 70),

                      /// Add Remove BUttons
                      TProductQuantityWithAddAndRemoveButton(),
                    ],
                  ),
                  TProductPriceText(price: '256')
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Checkout \$256.00'),
        ),
      ),
    );
  }
}
