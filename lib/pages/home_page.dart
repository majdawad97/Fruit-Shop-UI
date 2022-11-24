import 'package:flutter/material.dart';
import 'package:fruit_shop/util/custom_app_bar.dart';
import 'package:fruit_shop/util/custom_tab_bar.dart';
import 'package:fruit_shop/util/tab_bar_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int color = 0xFFFD5D5D;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: Colors.grey[50],
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                    children: [
                      TextSpan(
                        text: 'Get your fresh items \n with ',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      TextSpan(
                        text: 'Hay Markets',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 285,
                        child: TextField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide.none),
                              hintText: 'Search',
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(color),
                                size: 30,
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset(
                            'images/filter.png',
                            color: Colors.white,
                          ),
                        ),
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(color),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomTabBar(),
                MyTabBarView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
