import 'package:flutter/material.dart';
import 'package:musicplayerapp/animations/fade_in_slide.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeInSlide(duration: 1, direction: FadeSlideDirection.ltr, child: Icon(Icons.event_seat)),
          SizedBox(width: 10),
          FadeInSlide(duration: 0.5, direction: FadeSlideDirection.ltr, child: Text("Events", style: TextStyle(fontSize: 20))),
        ],
      )
    );
  }
}