import 'package:flutter/material.dart';
import 'package:instagram_ui_clone_app/pages/root_page.dart';
import 'package:instagram_ui_clone_app/palette/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram Clone App",
      theme: ThemeData(backgroundColor: appBarColor),
      debugShowCheckedModeBanner: false,
      home: RootPage(),
    );
  }
}
