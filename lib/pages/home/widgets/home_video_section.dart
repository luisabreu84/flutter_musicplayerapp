import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoSection extends StatefulWidget {
  const VideoSection({super.key});

  @override
  State<VideoSection> createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
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
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: AspectRatio(
          aspectRatio: 6/5,
          child: Stack(
            children: <Widget>[
              getVideoLayer(),
              getOpactityLayer(),
              getUILayer()
            ],
          ),
        ),
      ),
    );
  }

  Widget getVideoLayer() {
    return VideoPlayer(_controller);
  }

  Widget getOpactityLayer() {
    return Container(
      color: Colors.grey.withOpacity(0.2),
    );
  }

  Widget getUILayer(){
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              const Text(
                'Local Events',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              const Expanded(child: SizedBox()),
              IconButton(
                icon: const Icon(Icons.location_pin, size: 35),
                onPressed: () {},
                color: Colors.white,
              )
            ],
          ),
          const Expanded(child: SizedBox()),
          const Text(
            'Events, Art, Music and More',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          const Text(
            'check out the event schedule',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w300
            ),
          )
        ],
      ),
    );
  }
}