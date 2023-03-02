// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';

class CircularCard extends StatelessWidget {
  final String img;
  final String service;
  final VoidCallback card_navigate;

  const CircularCard(
      {super.key,
      required this.img,
      required this.service,
      required this.card_navigate});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: card_navigate,
      child: Container(
        width: 85,
        height: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 32,
              backgroundImage: NetworkImage(img),
            ),
            SizedBox(height: 8),
            Text(
              service,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
