import 'package:flutter/material.dart';
import 'package:musicplayerapp/models/carouselitem.dart';

class CarouselBuilder extends StatelessWidget {
  final List<CarouselItem> list;

  const CarouselBuilder({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: ((context, index) {
          bool last = list.length == (index + 1);
          return Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: last ? 16 : 0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(list[index].image),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 150,
                  child: Text(list[index].description,
                      style: const TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Raleway",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0,
                          overflow: TextOverflow.ellipsis),
                      maxLines: 2,
                      textAlign: TextAlign.left),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}