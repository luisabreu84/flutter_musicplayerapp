// Summary: Define the playlist model.
class PlayList {
  String image;
  String name;
  bool isrunning;

  PlayList({required this.name, required this.image, this.isrunning = false});

  static List<PlayList> getPlayLists() {
    return [
      PlayList(name: "Back in Black 90's", image: 'https://picsum.photos/200'),
      PlayList(name: 'Rock & Roll', image: 'https://picsum.photos/201'),
      PlayList(name: 'Thunderstruck', image: 'https://picsum.photos/202'),
      PlayList(name: 'Live Aid', image: 'https://picsum.photos/203'),
      PlayList(name: 'Mosh Pit', image: 'https://picsum.photos/204'),
      PlayList(name: 'The Wall', image: 'https://picsum.photos/205')
    ];
  }
}