import 'package:cookies_ui/colors.dart';
import 'package:cookies_ui/models/cookies.dart';
import 'package:cookies_ui/pages/home/widgets/avatar.dart';
import 'package:cookies_ui/pages/home/widgets/bottom_nav_bar.dart';
import 'package:cookies_ui/pages/home/widgets/cart.dart';
import 'package:cookies_ui/pages/home/widgets/cookie_card.dart';
import 'package:cookies_ui/pages/home/widgets/cookies_bar.dart';
import 'package:cookies_ui/pages/home/widgets/horizontal_cookie_card.dart';
import 'package:cookies_ui/pages/home/widgets/offers_bar.dart';
import 'package:cookies_ui/pages/home/widgets/personal_info.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background,
      body: body(size),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  Widget body(Size size) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 60,
        horizontal: 24,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Avatar(),
              SizedBox(
                width: 16,
              ),
              PersonalInfo(),
              Spacer(),
              Cart(),
            ],
          ),
          const CookiesBar(),
          SizedBox(
            height: size.height * 0.12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: cookies
                .map(
                  (e) => CookieCard(
                    cookie: e,
                  ),
                )
                .toList(),
          ),
          const OffersBar(),
          const HorizontalCookieCard(),
        ],
      ),
    );
  }
}
