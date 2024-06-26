import 'package:flutter/material.dart';
import 'package:musicplayerapp/models/carouselitem.dart';

class CarouselBuilder extends StatelessWidget {
  final List<CarouselItem> list;
  
  final double itemHeight;

  const CarouselBuilder({super.key, required this.list, this.itemHeight = 210});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: itemHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: ((context, index) {
          bool last = list.length == (index + 1);
          return Padding(
            padding: EdgeInsets.only(
              left: 12,
              right: last ? 12 : 0,
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
                if (list[index].description.isNotEmpty) ... [
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 150,
                    child: Text(list[index].description,
                        style: const TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: 13.0,
                            overflow: TextOverflow.ellipsis),
                        maxLines: 2,
                        textAlign: TextAlign.left),
                  ),
                ]
              ],
            ),
          );
        }),
      ),
    );
  }
}