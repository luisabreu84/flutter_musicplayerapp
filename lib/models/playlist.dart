// Summary: Define the playlist model.
class PlayList {
  String image;
  String name;
  bool isrunning;

  PlayList({required this.name, required this.image, this.isrunning = false});

  static List<PlayList> getPlayLists() {
    return [
      PlayList(name: "Greatest Hits 80s 90s", image: 'assets/images/pl1.png'),
      PlayList(name: "Live Radio", image: 'assets/images/pl2.png'),
      PlayList(name: "Hip Hop", image: 'assets/images/pl3.png'),
      PlayList(name: "Love Bug", image: 'assets/images/pl4.png'),
      PlayList(name: "Top 50 Indie", image: 'assets/images/pl5.png'),
      PlayList(name: "Rock Vibes", image: 'assets/images/pl6.png')
    ];
  }
}