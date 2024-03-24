import 'package:flutter/material.dart';
import 'package:musicplayerapp/models/playlist.dart';

class HomePlayList extends StatelessWidget {
  const HomePlayList({super.key});

  @override
  Widget build(BuildContext context) {
    final playList = PlayList.getPlayLists();

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: SizedBox(
        height: 300,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                childAspectRatio: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8),
            itemCount: playList.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                ),
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Container(
                      width: 56,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(playList[index].image),
                            fit: BoxFit.cover),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4),
                            bottomLeft: Radius.circular(4)),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    // text
                    Flexible(
                      child: Text(playList[index].name,
                          style: const TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              overflow: TextOverflow.clip)),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}