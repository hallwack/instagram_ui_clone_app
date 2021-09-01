import 'package:flutter/material.dart';
import 'package:instagram_ui_clone_app/data/post_data.dart';
import 'package:instagram_ui_clone_app/data/story_data.dart';
import 'package:instagram_ui_clone_app/palette/colors.dart';
import 'package:instagram_ui_clone_app/widgets/post_item.dart';
import 'package:instagram_ui_clone_app/widgets/story_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ingstagram",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_box_outlined,
                size: 28,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_outline,
                size: 28,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.send,
                size: 28,
              )),
        ],
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              width: 65,
                              height: 65,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 65,
                                    height: 65,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: NetworkImage(profile),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 3,
                                    right: 0,
                                    child: Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: Icon(
                                        Icons.add_circle,
                                        color: buttonFollowColor,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          SizedBox(
                            width: 70,
                            child: Center(
                              child: Text(
                                name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: List.generate(
                        stories.length,
                        (index) {
                          return StoryItem(
                            img: stories[index]['img'],
                            name: stories[index]['name'],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(color: Colors.white.withOpacity(0.3)),
            Column(
              children: List.generate(posts.length, (index) {
                return PostItem(
                    postImg: posts[index]['postImg'],
                    profileImg: posts[index]['profileImg'],
                    name: posts[index]['name'],
                    isLiked: posts[index]['isLoved'],
                    likedBy: posts[index]['likedBy'],
                    caption: posts[index]['caption'],
                    commentCount: posts[index]['commentCount'],
                    dayAgo: posts[index]['timeAgo']);
              }),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

