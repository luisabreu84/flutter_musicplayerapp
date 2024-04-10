import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import 'package:musicplayerapp/pages/home/widgets/home_playerbar.dart';
import 'package:musicplayerapp/pages/home/widgets/home_widget.dart';
import 'package:musicplayerapp/pages/home/widgets/home_header_widget.dart';

import 'package:musicplayerapp/widgets/footer_bar_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ListView(
              controller: _scrollController,
              children: [
                StickyHeader(
                  controller: _scrollController,
                  header: const HomeHeader(),
                  content: const HomeWidgets()
                )
              ],
            ),
            const HomePlayerBar()
          ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FooterAppBar()
    );
  }

}