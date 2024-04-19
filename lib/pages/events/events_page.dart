import 'package:flutter/material.dart';
import 'package:musicplayerapp/animations/fade_in_slide.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 160, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Events", style: TextStyle(color: Color(0xffffffff), fontWeight: FontWeight.w500, fontSize: 25.0)),
            const SizedBox(height: 15),
            FadeInSlide(duration: 0.4, child: eventCard('Music and Arts Festival', 'assets/images/e1.jpg', '13 Feb')),
            FadeInSlide(duration: 0.5, child: eventCard('Música y Arte de Bonnaroo', 'assets/images/e2.jpg', '04 Apr')),
            FadeInSlide(duration: 0.6, child: eventCard('Festival de Glastonbury', 'assets/images/e3.jpg', '24 Aug')),
            FadeInSlide(duration: 0.7, child: eventCard('T in the Park', 'assets/images/e4.jpg', '05 Sep')),
            FadeInSlide(duration: 0.8, child: eventCard('Fuji Rock Festival', 'assets/images/e5.jpg', '06 Sep')),
            FadeInSlide(duration: 0.9, child: eventCard('Lollapalooza', 'assets/images/e6.jpg', '08 Nov')),
            FadeInSlide(duration: 1, child: eventCard('Burning Man', 'assets/images/e7.jpg', '12 Dec')),
          ],
        ),
      ),
    );
  }
}

Widget eventCard(String name, String asset, String date) {
  return Padding(
    padding: const EdgeInsets.only(top: 18),
    child: Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(asset),
          fit: BoxFit.cover
        )
      ),
      child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1),
              ]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(name, style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
              const SizedBox(height: 8),
              Row(
                children: <Widget>[
                  const Icon(Icons.access_time, color: Colors.white,),
                  const SizedBox(width: 8),
                  Text(date, style: const TextStyle(color: Colors.white),)
                ],
              )
            ],
          ),
      )
    ),
  );
}