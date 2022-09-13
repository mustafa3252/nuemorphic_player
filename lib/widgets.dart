import 'package:flutter/material.dart';
import 'colors.dart';

class Intro extends StatelessWidget {
  final bool day;
  Intro({required this.day});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Column(
        children: [
          Text(
            "Intentions",
            style: TextStyle(
              color: day ? textColorDark : textColorLight,
              fontFamily: "Montserrat",
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Justin Bieber",
            style: TextStyle(
              color: day ? textColorDark : textColorLight,
              fontFamily: "Montserrat",
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

class VolumeButton extends StatelessWidget {
  final double btnRadius, childRadius;
  final String text;
  final bool day;

  VolumeButton(
      {required this.btnRadius,
      required this.childRadius,
      required this.text,
      required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: btnRadius,
      width: btnRadius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
            colors: day
                ? [Colors.white70, Colors.black12]
                : [themeColorLight.withOpacity(0.1), Colors.black]),
        boxShadow: day
            ? [
                BoxShadow(
                  color: const Color(0xff090010).withOpacity(0.6),
                  offset: Offset(5, 5),
                  blurRadius: 10.0,
                  spreadRadius: 3.0,
                ),
                const BoxShadow(
                  color: Color(0xffB8B9BC),
                  offset: Offset(-5, -5),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
              ]
            : [
                BoxShadow(
                  color: Colors.black.withOpacity(0.7),
                  offset: const Offset(8, 9),
                  blurRadius: 10.0,
                  spreadRadius: 3.0,
                ),
                BoxShadow(
                  color: themeColorLight.withOpacity(0.4),
                  offset: const Offset(-2, -2),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
              ],
      ),
      child: Container(
        height: childRadius,
        width: childRadius,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: buttonGradient,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Image.asset(text),
          ),
        ),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  final double btnRadius, childRadius;
  final String text;
  final bool day;

  PlayButton(
      {required this.btnRadius,
      required this.childRadius,
      required this.text,
      required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: btnRadius,
      width: btnRadius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
            colors: day
                ? [Colors.white70, Colors.black12]
                : [themeColorLight.withOpacity(0.05), Colors.black]),
        boxShadow: day
            ? [
                BoxShadow(
                  color: const Color(0xff090010).withOpacity(0.6),
                  offset: const Offset(8, 8),
                  blurRadius: 15.0,
                  spreadRadius: 3.0,
                ),
                const BoxShadow(
                  color: Color(0xffB8B9BC),
                  offset: Offset(-8, -8),
                  blurRadius: 15.0,
                  spreadRadius: 3.0,
                ),
              ]
            : [
                BoxShadow(
                  color: Colors.black.withOpacity(0.8),
                  offset: const Offset(8, 8),
                  blurRadius: 15.0,
                  spreadRadius: 3.0,
                ),
                BoxShadow(
                  color: themeColorLight.withOpacity(0.3),
                  offset: const Offset(-5, -2),
                  blurRadius: 15.0,
                  spreadRadius: 3.0,
                ),
              ],
      ),
      child: Container(
        height: childRadius,
        width: childRadius,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: buttonGradient,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Image.asset(text),
          ),
        ),
      ),
    );
  }
}
