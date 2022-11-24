import 'package:flutter/material.dart';
import 'package:fruit_shop/data/fruit.dart';
import 'package:fruit_shop/pages/item_details_page.dart';

class MyGridTile extends StatelessWidget {
  final Fruit fruit;

  MyGridTile({required this.fruit});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ItemDetails(
                fruit: fruit,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 120,
                  color: Color(fruit.color),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Hero(
                      tag: fruit.imagePath,
                      child: Image.asset(
                        fruit.imagePath,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      top: 12,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          fruit.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: fruit.price.toStringAsFixed(2),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                text: '/kg',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'See More',
                          style: TextStyle(
                            color: Color(0xFFFD5D5D),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 1,
              top: 1,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
