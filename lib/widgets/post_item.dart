import 'package:flutter/material.dart';
import 'package:instagram_ui_clone_app/data/post_data.dart';
import 'package:instagram_ui_clone_app/data/story_data.dart';

class PostItem extends StatelessWidget {
  final String postImg;
  final String profileImg;
  final String name;
  final isLiked;
  final String likedBy;
  final String caption;
  final String commentCount;
  final String dayAgo;

  const PostItem({
    Key? key,
    required this.postImg,
    required this.profileImg,
    required this.name,
    required this.isLiked,
    required this.likedBy,
    required this.caption,
    required this.commentCount,
    required this.dayAgo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(profileImg),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 6),
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ]),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6),
          Container(
            height: 400,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: NetworkImage(posts[1]['postImg']),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 3, right: 3, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: isLiked
                          ? Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 28,
                            )
                          : Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.white,
                              size: 28,
                            ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.chat_bubble_outline,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send_outlined,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark_outline_outlined,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "Liked by ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                TextSpan(
                  text: likedBy,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: " and others",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ]),
            ),
          ),
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: caption,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ]),
            ),
          ),
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "View all $commentCount comments",
              style:
                  TextStyle(color: Colors.white.withOpacity(0.4), fontSize: 14),
            ),
          ),
          SizedBox(height: 0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(profile),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Add a comment...",
                      hintStyle: TextStyle(color: Colors.white.withOpacity(0.4)),
                      focusedBorder: OutlineInputBorder(),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              dayAgo,
              style: TextStyle(
                color: Colors.white.withOpacity(0.4),
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
