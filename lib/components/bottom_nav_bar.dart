import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: GNav(
          //color
          color: Colors.grey,
          activeColor: Colors.grey[700],
          tabBackgroundColor: Colors.grey.shade100,
          // border
          tabBorderRadius: 8.0,
          tabActiveBorder: Border.all(
            color: Colors.white,
          ),
          // ontap
          onTabChange: (value) => this.onTabChange,
          // axis alignment
          mainAxisAlignment: MainAxisAlignment.center,

          //children
          tabs: const [
            GButton(icon: Icons.home, text: "Shop"),
            GButton(icon: Icons.shopping_bag_rounded, text: "Cart")
          ]),
    );
  }
}
