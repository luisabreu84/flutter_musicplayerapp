import 'package:flutter/material.dart';
import 'package:musicplayerapp/components/carousel_builder.dart';
import 'package:musicplayerapp/components/section.dart';
import 'package:musicplayerapp/models/carouselitem.dart';

class JumpBack extends StatelessWidget {
  const JumpBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Section(
      title: 'Recommended radio',
      bodyBuilder: (context) {
        return CarouselBuilder(list: CarouselItem.getRadioList());
      },
    );
  }
}

class Suggestions extends StatelessWidget {
  const Suggestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Section(
      title: 'Suggested stations',
      bodyBuilder: (context) {
        return CarouselBuilder(list: CarouselItem.getRadioList().reversed.toList());
      },
    );
  }
}