import 'package:flutter/material.dart';
import 'package:musicplayerapp/animations/fade_in_slide.dart';
import 'package:musicplayerapp/components/carousel_builder.dart';
import 'package:musicplayerapp/components/grid_builder.dart';
import 'package:musicplayerapp/components/section.dart';
import 'package:musicplayerapp/models/carouselitem.dart';
import 'package:musicplayerapp/models/searchitem.dart';
import 'package:musicplayerapp/widgets/button_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: FadeInSlide(
            duration: 0,
            child: Container(
              color: Colors.black,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Text("Search",
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
            ),
          )
        ),
        SliverAppBar(
            backgroundColor: Colors.black,
            expandedHeight: 56,
            floating: true,
            pinned: true,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1,
              centerTitle: true,
              titlePadding: const EdgeInsets.symmetric(vertical: 5),
              title: FadeInSlide(
                duration: 0.4,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  child: const TextField(
                    style: TextStyle(
                        color: Color(0xff747474),
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 13.0),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.black54),
                        contentPadding: EdgeInsets.only(top: 11),
                        hintText: 'What do you want to listen to?',
                        hintStyle: TextStyle(color: Colors.black54, fontSize: 15.0),
                      ),
                  ),
                ),
              ),
            ),
        ),
        SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInSlide(
                    duration: 0.6,
                    child: Section(
                      sectionPadding: const EdgeInsets.only(top: 0, bottom: 0),
                      title: 'Explore your bands',
                      bodyBuilder: (context) {
                        return CarouselBuilder(
                          itemHeight: 170,
                          list: CarouselItem.getGenres(),
                        );
                      },
                    ),
                  ),
                   FadeInSlide(
                    duration: 0.8,
                     child: Section(
                      sectionPadding: const EdgeInsets.only(top: 0, bottom: 0),
                      title: 'Browse all',
                      bodyBuilder: (context) {
                        return GridBuilder(
                          list: SearchItem.getSearchitems(),
                        );
                      },
                                       ),
                   ),
                ],
              ),
            ),
          ),
      ]
    );
  }
}