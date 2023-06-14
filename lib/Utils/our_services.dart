import 'package:flutter/material.dart';
import 'our_services_card.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ServiceCard(
            title: 'Nails',
            image: 'asset/nails.png',
            fontSized: 16,
            iconH: 37,
            iconW: 37,
          ),
          ServiceCard(
            title: 'Hair',
            image: 'asset/hair.png',
            fontSized: 16,
            iconH: 37,
            iconW: 37,
          ),
          ServiceCard(
            title: 'Facial',
            image: 'asset/facial.png',
            fontSized: 16,
            iconH: 37,
            iconW: 37,
          ),
          ServiceCard(
            title: 'massage',
            image: 'asset/massage.png',
            fontSized: 16,
            iconH: 37,
            iconW: 37,
          ),
        ],
      ),
    );
  }
}
