import 'package:flutter/material.dart';
import 'package:fruit_shop/data/fruit.dart';
import 'package:fruit_shop/util/grid_tile.dart';

class MyTabBarView extends StatefulWidget {
  const MyTabBarView({super.key});

  @override
  State<MyTabBarView> createState() => _MyTabBarViewState();
}

class _MyTabBarViewState extends State<MyTabBarView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: [
          GridView.builder(
            padding: const EdgeInsets.only(top: 12),
            itemCount: fruitList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.85,
            ),
            itemBuilder: (context, index) {
              return MyGridTile(
                fruit: fruitList[index],
              );
            },
          ),
          Center(
            child: Text('Vegetables'),
          ),
          Center(
            child: Text('Dairy'),
          ),
          Center(
            child: Text('Grains'),
          ),
          Center(
            child: Text('Meats'),
          ),
        ],
      ),
    );
  }
}
