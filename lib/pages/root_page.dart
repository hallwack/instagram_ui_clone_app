import 'package:flutter/material.dart';
import 'package:instagram_ui_clone_app/pages/home_page.dart';
import 'package:instagram_ui_clone_app/pages/marketplace_page.dart';
import 'package:instagram_ui_clone_app/pages/reels_page.dart';
import 'package:instagram_ui_clone_app/pages/search_page.dart';
import 'package:instagram_ui_clone_app/pages/user_page.dart';
import 'package:instagram_ui_clone_app/palette/colors.dart';

class RootPage extends StatefulWidget {
  RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: indexPage,
      children: [
        HomePage(),
        SearchPage(),
        ReelsPage(),
        MarketplacePage(),
        UserPage()
      ],
    );
  }

  Widget getFooter() {
    List iconItems = [
      indexPage == 0 ? Icons.home : Icons.home_outlined,
      indexPage == 1 ? Icons.search : Icons.search_outlined,
      indexPage == 2 ? Icons.movie : Icons.movie_outlined,
      indexPage == 3 ? Icons.shopping_bag : Icons.shopping_bag_outlined,
      indexPage == 4 ? Icons.account_circle : Icons.account_circle_outlined,
    ];

    return Container(
      decoration: BoxDecoration(color: appFooterBarColor),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(iconItems.length, (index) {
            return IconButton(
              onPressed: () {
                setState(() {
                  indexPage = index;
                });
              },
              icon: Icon(
                iconItems[index],
                size: 27,
              ),
              color: Colors.white,
            );
          }),
        ),
      ),
    );
  }
}
