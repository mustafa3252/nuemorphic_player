import 'package:flutter/material.dart';
import 'package:music_player/widgets.dart';

import 'colors.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  // dark mod variable
  bool day = true;

  // turn to dark mod
  void changeMod() {
    setState(() {
      day = !day;
    });
  }

  @override
  Widget build(BuildContext context) {
// screen height variable
    final height = MediaQuery.of(context).size.height;

// screen width variable
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: day
                  ? [bgColorLightTop, bgColorLightBottom]
                  : [bgColorDarkTop, bgColorDarkBottom],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: changeMod,
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 30),
                                height: 30,
                                width: 30,
                                child: day
                                    ? Image.asset("assets/images/half-moon.png")
                                    : Image.asset("assets/images/sun.png"),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Intro(day: day),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: height * 0.2,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: buttonGradient,
                      border: Border.all(
                        width: 5,
                        color: const Color(0xff555555),
                      ),
                      boxShadow: day
                          ? [
                              BoxShadow(
                                color: const Color(0xff090010).withOpacity(0.7),
                                offset: const Offset(10, 10),
                                blurRadius: 20.0,
                                spreadRadius: 4.0,
                              ),
                              BoxShadow(
                                color: Colors.white.withOpacity(0.7),
                                offset: const Offset(-10, -10),
                                blurRadius: 20.0,
                                spreadRadius: 4.0,
                              ),
                            ]
                          : [
                              BoxShadow(
                                color: const Color(0xff090010).withOpacity(0.7),
                                offset: const Offset(10, 10),
                                blurRadius: 20.0,
                                spreadRadius: 4.0,
                              ),
                              BoxShadow(
                                color: themeColorLight.withOpacity(0.4),
                                offset: const Offset(-8, -3),
                                blurRadius: 20.0,
                                spreadRadius: 4.0,
                              ),
                            ]),
                  child: const Center(child: Beats()),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "3:07",
                      style: TextStyle(
                        color: day ? textColorDark : textColorLight,
                        fontFamily: "Montserrat",
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      height: 7,
                      width: width * 0.45,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff474747),
                                  Color(0xff141414),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                          FractionallySizedBox(
                            heightFactor: 1,
                            widthFactor: 0.35,
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [themeColorDark, themeColorLight],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(100),
                                      bottomRight: Radius.circular(100))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "1:53",
                      style: TextStyle(
                        color: day ? textColorDark : textColorLight,
                        fontFamily: "Montserrat",
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    VolumeButton(
                      btnRadius: height * 0.04,
                      childRadius: height * 0.034,
                      day: day,
                      text: "assets/images/minus.png",
                    ),
                    Container(
                      height: height * 0.06,
                      width: height * 0.06,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.black, bgColorDarkTop],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: Container(
                        height: height * 0.052,
                        width: height * 0.052,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: const LinearGradient(
                              colors: [
                                Color(0xff2F2934),
                                Color(0xff483A51),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          boxShadow: day
                              ? [
                                  BoxShadow(
                                    color: const Color(0xff090010)
                                        .withOpacity(0.6),
                                    offset: const Offset(5, 5),
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
                                    offset: const Offset(5, 5),
                                    blurRadius: 10.0,
                                    spreadRadius: 3.0,
                                  ),
                                  BoxShadow(
                                    color: themeColorLight.withOpacity(0.2),
                                    offset: const Offset(-5, -5),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                  ),
                                ],
                        ),
                        child: Center(
                          child: Text(
                            "3",
                            style: TextStyle(
                              color: themeColorLight,
                              fontFamily: "Montserrat",
                              fontSize: 19,
                            ),
                          ),
                        ),
                      ),
                    ),
                    VolumeButton(
                      btnRadius: height * 0.04,
                      childRadius: height * 0.034,
                      day: day,
                      text: "assets/images/plus.png",
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Repeat",
                    style: TextStyle(
                      color: day ? textColorDark : textColorLight,
                      fontFamily: "Montserrat",
                      fontSize: 23,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PlayButton(
                      text: "assets/images/tostart.png",
                      btnRadius: height * 0.07,
                      childRadius: height * 0.062,
                      day: day,
                    ),
                    PlayButton(
                      text: "assets/images/Pause.png",
                      btnRadius: height * 0.1,
                      childRadius: height * 0.092,
                      day: day,
                    ),
                    PlayButton(
                      text: "assets/images/toEnd.png",
                      btnRadius: height * 0.07,
                      childRadius: height * 0.062,
                      day: day,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Beats extends StatelessWidget {
  const Beats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: 5,
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: beatGradient,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: 5,
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: beatGradient,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: 5,
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: beatGradient,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: 5,
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: beatGradient,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: 5,
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: beatGradient,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: 5,
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: beatGradient,
          ),
        ),
      ],
    );
  }
}
