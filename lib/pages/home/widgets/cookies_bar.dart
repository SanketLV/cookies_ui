import 'package:flutter/material.dart';
import '../../../colors.dart';

class CookiesBar extends StatelessWidget {
  const CookiesBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          children: [
            Text(
              "Cookies",
              style: TextStyle(
                color: Colors.white,
                fontSize: 42,
              ),
            ),
            Text(
              "Premium",
              style: TextStyle(
                color: orange,
                fontSize: 30,
              ),
            ),
          ],
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
