import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffEFEFEF),
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.blueGrey[400],
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.blueGrey[400],
          ),
          contentPadding: const EdgeInsets.only(top: 14),
        ),
      ),
    );
  }
}
