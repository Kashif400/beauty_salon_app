import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            Text('Rayna Carder',
                style: TextStyle(
                    fontFamily: 'Lowan Old Style',
                    fontSize: 22,
                    fontWeight: FontWeight.w700)),
          ],
        ),
        SvgPicture.asset('asset/cart.svg'),
      ],
    );
  }
}
