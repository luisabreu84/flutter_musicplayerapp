import 'package:flutter/material.dart';

class FooterAppBar extends StatelessWidget {
  const FooterAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 6, bottom: 10),
        height: 65.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black.withOpacity(0.7), Colors.black],
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.home, color: Colors.white70),
                Text("Home", style: TextStyle(color: Colors.white70)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.search, color: Colors.white70),
                Text("Search", style: TextStyle(color: Colors.white70)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.event_available_outlined, color: Colors.white70),
                Text("Events", style: TextStyle(color: Colors.white70)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.settings, color: Colors.white70),
                Text("Settings", style: TextStyle(color: Colors.white70)),
              ],
            ),
          ],
        ));
  }
}
