import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.event_seat),
          SizedBox(width: 10),
          Text("Events", style: TextStyle(fontSize: 20)),
        ],
      )
    );
  }
}