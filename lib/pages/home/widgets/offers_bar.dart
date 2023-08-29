import 'package:flutter/material.dart';
import '../../../colors.dart';

class OffersBar extends StatelessWidget {
  const OffersBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "Cookies",
          style: TextStyle(
            color: Colors.white,
            fontSize: 42,
          ),
        ),
        Text(
          "See more",
          style: TextStyle(
            color: orange,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
