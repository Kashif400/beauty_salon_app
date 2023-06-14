import 'package:flutter/material.dart';

import 'upcomming_card.dart';

class UpcommingBooking extends StatelessWidget {
  const UpcommingBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          UpcommingCard(
            name: 'Classic Manicure',
            place: 'Home',
            date: 'Sat, 22 August 2022',
          ),
          const SizedBox(
            width: 5,
          ),
          UpcommingCard(
            name: 'Classic Manicure',
            place: 'Salon',
            date: 'Sat, 22 August 2022',
          ),
          const SizedBox(
            width: 5,
          ),
          UpcommingCard(
            name: 'Classic Manicure',
            place: 'Home',
            date: 'Sat, 22 August 2022',
          ),
        ],
      ),
    );
  }
}
