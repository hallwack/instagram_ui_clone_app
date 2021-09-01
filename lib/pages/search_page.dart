import 'package:flutter/material.dart';
import 'package:instagram_ui_clone_app/data/search_data.dart';
import 'package:instagram_ui_clone_app/palette/colors.dart';
import 'package:instagram_ui_clone_app/widgets/category_chip_item.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: textFieldBackground,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white.withOpacity(0.6),
                    ),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search,
                        color: Colors.white.withOpacity(0.6)),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      searchCategories.length,
                      (index) =>
                          CategoryChip(category: searchCategories[index]),
                    ),
                  ),
                ),
              ),
              GridView.count(
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                children: List.generate(
                  searchImages.length,
                  (index) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(searchImages[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
