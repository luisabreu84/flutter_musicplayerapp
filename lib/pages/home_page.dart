import 'package:flutter/material.dart';
import 'package:musicplayerapp/widgets/button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //SettingsButton()
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 12),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 16,
                      backgroundImage: AssetImage("assets/images/intro.png"),
                    ),
                    SizedBox(width: 5),
                    Text("Hi Luis",
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontSize: 25.0),
                        textAlign: TextAlign.left),
                    Expanded(child: SizedBox()),
                    IconButtonApp(
                      name: "Notifications",
                      description: "Notifications will be available soon!",
                      icon: Icon(Icons.notifications),
                    ),
                    IconButtonApp(
                      name: "Settings",
                      description: "Settings will be available soon!",
                      icon: Icon(Icons.settings),
                    ),
                  ],
                ),
              ),
            ]
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: const EdgeInsets.only(top: 6, bottom: 10),
        height: 65.0,
        decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black.withOpacity(0.7), Colors.black],
              ),
        ),
        child: Row(
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
                Icon(Icons.library_music, color: Colors.white70),
                Text("Library", style: TextStyle(color: Colors.white70)),
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
        )
    )
    );
  }
}