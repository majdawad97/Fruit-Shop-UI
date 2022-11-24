import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  final int color = 0xFFFD5D5D;
  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.label,
      unselectedLabelColor: Colors.grey,
      isScrollable: true,
      labelColor: Color(color),
      indicatorColor: Color(color),
      tabs: [
        Tab(
          text: 'Fruits',
        ),
        Tab(
          text: 'Vegetables',
        ),
        Tab(
          text: 'Dairy',
        ),
        Tab(
          text: 'Grains',
        ),
        Tab(
          text: 'Meats',
        ),
      ],
    );
  }
}
