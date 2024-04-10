class CarouselItem {
  final String title;
  final String description;
  final String image;

  CarouselItem({required this.title, required this.description, required this.image});

  static List<CarouselItem> getRadioList() {
    return [
      CarouselItem(
        title: "",
        description: "The Police, Bruce Springsteen, U2, Queen, The Rolling Stones, The Beatles, The Who, The Clash, The Doors, The Kinks",
        image: 'assets/images/r1.png'
      ),
      CarouselItem(
        title: "",
        description: "Nirvana, Pearl Jam, The Smashing Pumpkins, Incubus",
        image: 'assets/images/r2.png'
      ),
      CarouselItem(
        title: "",
        description: "Radiohead, Oasis, The Cranberries, Blur, Pulp, Suede, The Verve, Placebo, Supergrass, Ash, Elastica, The Charlatans, The Stone Roses, The La's, The Boo Radleys, The Bluetones, The Seahorses, The Coral, The Zutons, The Libertines, The Strokes, The White Stripes, The Hives, The Vines, The Killers, The Bravery, The Rapture, The Thrills, The Zutons, The Kooks, The Fratellis, The Pigeon Detectives, The Wombats, The Courteeners, The View, The Maccabees, The Vaccines, The Drums, The Horrors, The Cribs, The Enemy",
        image: 'assets/images/r3.png'
      ),
      CarouselItem(
        title: "",
        description: "The Police, Tears For Fears, a-ha, Dran Duran, INES",
        image: 'assets/images/r4.png'
      ),
      CarouselItem(
        title: "",
        description: "Depeche Mode, Tears For Fears, Soft Cell, The Cure, New Order, Duran Duran, Pet",
        image: 'assets/images/r5.png'
      ),
      CarouselItem(
        title: "",
        description: "Aerosmith, Scorpions, Van Halen, Alice Cooper, Poison",
        image: 'assets/images/r6.png'
      ),
      CarouselItem(
        title: "",
        description: "Red Hot Chili Peppers, Green Day, Oasis, R.E.M., The Offspring, Foo Fighters, Weezer, The Smashing Pumpkins",
        image: 'assets/images/r7.png'
      ),
      CarouselItem(
        title: "",
        description: "Pink Floyd, The Police, Led Zeppelin, Eagles, Paul McCartney, The Rolling Stones, The Who, The Doors, The Kinks, The Byrds, The Yardbirds, The Animals, The Zombies, The Hollies, The Turtles, The Mon",
        image: 'assets/images/r8.png'
      )
    ];
  } 
}