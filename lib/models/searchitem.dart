import 'package:flutter/material.dart';

class SearchItem {
  final String title;
  final String imageUrl;
  final Color color;

  SearchItem({required this.title, required this.imageUrl, required this.color});

  static List<SearchItem> getSearchitems() {
    return [
      SearchItem(
        title: "Music",
        imageUrl: "assets/images/se1.jpeg",
        color: Colors.amber
      ),
      SearchItem(
        title: "Podcast",
        imageUrl: "assets/images/se2.jpeg",
        color: Colors.blue
      ),
      SearchItem(
        title: "Live Events",
        imageUrl: "assets/images/se3.jpeg",
        color: Colors.blueAccent
      ),
      SearchItem(
        title: "Made For You",
        imageUrl: "assets/images/se4.jpeg",
        color: Colors.blueGrey
      ),
      SearchItem(
        title: "New Release",
        imageUrl: "assets/images/se5.jpeg",
        color: Colors.brown
      ),
      SearchItem(
        title: "Merch",
        imageUrl: "assets/images/se6.jpeg",
        color: Colors.cyan
      ),
      SearchItem(
        title: "Latin",
        imageUrl: "assets/images/se7.jpeg",
        color: Colors.deepOrange
      ),
      SearchItem(
        title: "Pop",
        imageUrl: "assets/images/se8.jpeg",
        color: Colors.green
      ),
      SearchItem(
        title: "Hip-Hop",
        imageUrl: "assets/images/se9.jpeg",
        color: Colors.grey
      ),
      SearchItem(
        title: "Stories",
        imageUrl: "assets/images/se10.jpeg",
        color: Colors.indigo
      ),
      SearchItem(
        title: "Charts",
        imageUrl: "assets/images/se11.jpeg",
        color: Colors.orange
      ),
      SearchItem(
        title: "Rock",
        imageUrl: "assets/images/se12.jpeg",
        color: Colors.purple
      ),
    ];
  }
}