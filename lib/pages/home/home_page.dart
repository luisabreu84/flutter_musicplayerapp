import 'package:flutter/material.dart';

import 'package:musicplayerapp/pages/home/widgets/home_header_widget.dart';
import 'package:musicplayerapp/pages/home/widgets/home_jumpback_widget.dart';
import 'package:musicplayerapp/pages/home/widgets/home_newrelease_widget.dart';
import 'package:musicplayerapp/pages/home/widgets/home_playlists_widget.dart';
import 'package:musicplayerapp/pages/home/widgets/home_video_section.dart';

import 'package:sticky_headers/sticky_headers/widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _scrollController,
      children: [
        StickyHeader(
          controller: _scrollController,
          header: const HomeHeader(),
          content: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HomePlayList(),
              HomeNewRelease(),
              JumpBack(),
              VideoSection(),
              Suggestions(),
            ]
          )
        )
      ],
    );
  }
}