import 'package:flutter/material.dart';
import 'package:musicplayerapp/models/searchitem.dart';

class GridBuilder extends StatelessWidget {
  const GridBuilder({super.key, required this.list});

  final List<SearchItem> list;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SizedBox(
        height: (120 * (list.length ~/ 2).toDouble()) + 80,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12),
            itemCount: list.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (ctx, index) {
              return Container(
                decoration: BoxDecoration(
                  color: list[index].color,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                child: Stack(
                  children: [
                    Positioned(
                    right: -20,
                    bottom: -10,
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(25 / 360),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(list[index].imageUrl),
                              fit: BoxFit.cover),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4),
                              bottomLeft: Radius.circular(4)),
                        ),
                      ),
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(list[index].title,
                          style: const TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0),
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