import 'package:flutter/material.dart';

import 'featured_card.dart';

class FeaturedService extends StatelessWidget {
  const FeaturedService({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            FeaturedCard(),
            SizedBox(
              width: 5,
            ),
            FeaturedCard(),
            SizedBox(
              width: 5,
            ),
            FeaturedCard(),
            SizedBox(
              width: 5,
            ),
          ],
        ));
  }
}
