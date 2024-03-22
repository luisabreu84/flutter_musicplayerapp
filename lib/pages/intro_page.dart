import 'package:flutter/material.dart';
import 'package:musicplayerapp/widgets/intro_widget.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> with SingleTickerProviderStateMixin {
  
  late PageController _pageController;
  int totalPage = 4;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);

    super.initState();
  }

   @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.black,
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          IntroWidget(
              page: 1,
              image: 'assets/images/intro.png',
              title: 'Dive into a world of music with Harmony',
              description: 'Harmony is your gateway to a world of endless music. With millions of songs at your fingertips, you can explore genres, discover new artists, and create personalized playlists for any mood or activity.',
              totalPage: totalPage
          ),
          IntroWidget(
              page: 2,
              image: 'assets/images/intro.png',
              title: 'Your soundtrack to life starts here:',
              description: 'Explore a vast library of songs, from chart-topping hits to hidden gems. Tailor your listening experience with personalized recommendations and curated playlists.',
              totalPage: totalPage
          ),
          IntroWidget(
              page: 3,
              image: 'assets/images/intro.png',
              title: 'Music that moves you, wherever you go:',
              description: "Listen to your favorite music offline, even when you're without an internet connection. Create custom playlists for any occasion, from intense workouts to chill-out sessions.",
              totalPage: totalPage
          ),
          IntroWidget(
              image: 'assets/images/intro.png',
              page: 4,
              title: 'Let the music take control:',
              description: "Experience music like never before with our high-quality streaming and powerful sound system. Discover new artists, genres, and moods that will keep you coming back for more.",
              totalPage: totalPage
          )
        ],
      ),
    );
  }
}