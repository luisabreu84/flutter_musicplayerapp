import 'package:flutter/material.dart';
import 'package:musicplayerapp/widgets/button_widget.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const Padding(
        padding: EdgeInsets.only(left: 12, right: 12, bottom: 10, top: 5),
        child: Row(
          children: <Widget>[
            Text("Welcome back!",
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
              name: "Events",
              description: "Events will be available soon!",
              icon: Icon(Icons.event_available_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
