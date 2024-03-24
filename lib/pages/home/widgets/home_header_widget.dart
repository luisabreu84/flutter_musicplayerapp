import 'package:flutter/material.dart';
import 'package:musicplayerapp/widgets/button_widget.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
    );
  }
}
