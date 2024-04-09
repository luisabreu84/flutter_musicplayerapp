import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomeVideoSection extends StatefulWidget {
  const HomeVideoSection({super.key});

  @override
  State<HomeVideoSection> createState() => _HomeVideoSectionState();
}

class _HomeVideoSectionState extends State<HomeVideoSection> {
  late VideoPlayerController _controller;

  @override @override
  void initState() {
    super.initState();
    
    _controller = VideoPlayerController.asset('assets/videos/videobc.mov');

    _controller.addListener(() {
      setState(() {});
    });

    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
    
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 10, bottom: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: AspectRatio(
          aspectRatio: 6/5,
          child: Stack(
            children: <Widget>[
              VideoPlayer(_controller),
              _getBackgroundColor(),
            ],
          ),
        ),
      ),
    );
  }

  _getBackgroundColor() {
    return Container(
      color: Colors.grey.withOpacity(0.2),
    );
  }
}