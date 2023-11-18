import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    required this.cardPadding,
    required this.cardChild,
    required this.cardColor,
    super.key,
  });

  final Color cardColor;
  final Widget cardChild;
  final double cardPadding;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(cardPadding),
      ),
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: cardChild,
      ),
    );
  }
}
