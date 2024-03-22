import 'package:flutter/material.dart';
import 'package:musicplayerapp/animations/fadeanimation.dart';

class IntroWidget extends StatelessWidget {
  
  final int page;
  final dynamic image;
  final String title;
  final String description;
  final int totalPage;

  const IntroWidget({super.key, required this.page, required this.image, required this.title, required this.description, required this.totalPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight, 
              stops: const [0.3, 0.9],
              colors: [Colors.black.withOpacity(.5),Colors.black.withOpacity(.5),]
            )),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    FadeAnimation(
                        0.9,
                        Text(
                          page.toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )),
                    Text(
                      '/$totalPage',
                      style: const TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                          0.4,
                          Text(
                            title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                height: 1.2,
                                fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(height: 20),
                      FadeAnimation(
                          0.9,
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              description,
                              style: TextStyle(
                                  color: Colors.white.withOpacity(.7),
                                  height: 1.9,
                                  fontSize: 15),
                            )
                          )
                      ),
                      const SizedBox(height: 30)
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                        child: const Text("Skip",
                            style: TextStyle(color: Colors.white, fontSize: 15.0)),
                        onTap: () {
                          Navigator.of(context).pushReplacementNamed('home');
                        }),
                    if (page == 4)
                      GestureDetector(
                          child: const Text("Sign Up",
                              style: TextStyle(color: Colors.white, fontSize: 15.0)),
                          onTap: () {
                            Navigator.of(context).pushReplacementNamed('signup');
                          }),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}