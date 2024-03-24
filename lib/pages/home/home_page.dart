import 'package:flutter/material.dart';

import 'package:musicplayerapp/pages/home/widgets/home_header_widget.dart';
import 'package:musicplayerapp/pages/home/widgets/home_playlists_widget.dart';
import 'package:musicplayerapp/widgets/footer_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HomeHeader(),
            HomePlayList(),
          ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FooterAppBar()
    );
  }
}