import 'package:flutter/material.dart';
import 'package:musicplayerapp/components/section.dart';

class HomeNewRelease extends StatelessWidget {
  const HomeNewRelease({super.key});

  static double radius = 10;

  @override
  Widget build(BuildContext context) {
    return Section(
      titleBuilder: (context) {
      return Padding(
          padding:
              const EdgeInsets.only(left: 16, top: 0, bottom: 10, right: 16),
          child: Row(
            children: <Widget>[
              const CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage("assets/images/davidguetta.png"),
              ),
              const SizedBox(width: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("New Release from",
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w700,
                          fontFamily: "Raleway",
                          fontStyle: FontStyle.normal,
                          fontSize: 12.0)),
                  const Text("David Guetta",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 22.0))
                ],
              ),
          ])
        );
      }, 
      bodyBuilder: (context) {
        return Container(
        height: 150,
        decoration: BoxDecoration(
          color: const Color(0xff2E2F33),
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        margin: const EdgeInsets.only(right: 15, left: 15),
        child: Row(
          children: <Widget>[
            Container(
              width: 142,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/images/davidguettaww.jpeg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(radius),
                    bottomLeft: Radius.circular(radius)),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(radius),
                      bottomRight: Radius.circular(radius)
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // title
                      const Padding(
                        padding: EdgeInsets.only(left: 16, right: 0, top: 10),
                        child: Text("I Don't Wanna Wait",
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w700,
                                fontFamily: "Raleway",
                                fontStyle: FontStyle.normal,
                                fontSize: 13.0),
                            textAlign: TextAlign.left),
                      ),
                      const SizedBox(height: 4),
                      const Padding(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: SizedBox(
                          width: 150,
                          child: Text(
                            "Single • David Guetta, OneRepublic",
                            style: TextStyle(
                              color: Color(0xffa7a7a7),
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              fontSize: 13.0,
                              overflow: TextOverflow.ellipsis,
                            ),
                            maxLines: 2,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add_circle_outline_outlined, color: Colors.white),
                              iconSize: 28,
                            ),
                            IconButton(
                              onPressed: () {}, 
                              icon: const Icon(Icons.play_circle, color: Colors.white),
                              iconSize: 30,
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
