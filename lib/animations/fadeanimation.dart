import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  const FadeAnimation(this.delay, this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    
    final opacityT = MovieTweenProperty<double>();
    final translateT = MovieTweenProperty<double>();
    
    final tweenmovie = MovieTween()
      ..tween(opacityT, Tween(begin: 0.0, end: 1.0), duration: const Duration(milliseconds: 500))
      ..tween(translateT, Tween(begin: 120.0, end: 0.0), duration: const Duration(milliseconds: 500), curve: Curves.easeOut);

    return PlayAnimationBuilder<Movie>(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tweenmovie.duration,
      tween: tweenmovie,
      child: child,
      builder: (context, movie, child) {
        return Opacity(
          opacity: opacityT.from(movie),
          child: Transform.translate(
            offset: Offset(0, translateT.from(movie)),
            child: child,
          ),
        );
      } 
    );
  }
}