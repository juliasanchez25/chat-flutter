import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7FC),
        borderRadius: BorderRadius.circular(4),
      ),
      child: const TextField(
        decoration: InputDecoration(
            icon: Icon(Icons.search, color: Color(0xFFADB5BD)),
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(color: Color(0xFFADB5BD))),
      ),
    );
  }
}