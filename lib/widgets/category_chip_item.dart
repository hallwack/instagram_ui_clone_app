import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String category;

  const CategoryChip({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Chip(
        label: Text(
          category,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        side: BorderSide(
          color: Colors.white.withOpacity(0.3),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
