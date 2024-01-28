import 'package:ecomerce_app/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:flutter/material.dart';

class TOverallProductRating extends StatelessWidget {
  const TOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.8',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              TRatingProfressIndicator(text: '5', value: 1.0),
              TRatingProfressIndicator(text: '5', value: 0.8),
              TRatingProfressIndicator(text: '5', value: 0.6),
              TRatingProfressIndicator(text: '5', value: 0.4),
              TRatingProfressIndicator(text: '5', value: 0.2),
            ],
          ),
        ),
      ],
    );
  }
}
