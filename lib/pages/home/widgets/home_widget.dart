import 'package:flutter/material.dart';

import 'package:musicplayerapp/pages/home/widgets/home_jumpback_widget.dart';
import 'package:musicplayerapp/pages/home/widgets/home_newrelease_widget.dart';
import 'package:musicplayerapp/pages/home/widgets/home_playlists_widget.dart';
import 'package:musicplayerapp/pages/home/widgets/home_video_section.dart';

class HomeWidgets extends StatelessWidget {
  const HomeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HomePlayList(),
            HomeNewRelease(),
            JumpBack(),
            VideoSection(),
            Suggestions(),
          ]
        );
  }
}