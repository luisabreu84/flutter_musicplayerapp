import 'package:flutter/material.dart';

typedef OnTouchedCallback = void Function(int index);

class FooterAppBar extends StatefulWidget {
  const FooterAppBar({super.key, this.onTouched});
  
  final OnTouchedCallback? onTouched;

  @override
  State<FooterAppBar> createState() => _FooterAppBarState();
}

class _FooterAppBarState extends State<FooterAppBar> {
  int _activeIndex = 0;

  void updateIndex(int i) {
    setState(() {
      _activeIndex = i;
    });

    widget.onTouched!(i);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 6, bottom: 10),
        height: 65.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black.withOpacity(0.8), Colors.black],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () => updateIndex(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.home, color: getActiveColor(0)),
                  Text("Home", style: TextStyle(color: getActiveColor(0))),
                ],
              ),
            ),
            InkWell(
             onTap: () => updateIndex(1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.search, color: getActiveColor(1)),
                  Text("Search", style: TextStyle(color: getActiveColor(1))),
                ],
              ),
            ),
            InkWell
            (
              onTap: () => updateIndex(2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.event_seat, color: getActiveColor(2)),
                  Text("Events", style: TextStyle(color: getActiveColor(2))),
                ],
              ),
            ),
            InkWell
            (
              onTap: () => updateIndex(3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.settings, color: getActiveColor(3)),
                  Text("Settings", style: TextStyle(color: getActiveColor(3))),
                ],
              ),
            )
          ],
        ));
  }
  
  Color getActiveColor(int index) {
    return _activeIndex == index ? Colors.blueGrey : Colors.white;
  }
}
