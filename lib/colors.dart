import 'package:flutter/material.dart';

Color bgColorLightTop = Color(0xffD7DFE4);
Color bgColorLightBottom = Color(0xff7A7886);
Color bgColorDarkTop = Color(0xff62696E);
Color bgColorDarkBottom = Color(0xff2A1D29);

Color textColorDark = Color(0xff2A1D29);
Color textColorLight = Color(0xffD7DFE4);

Color themeColorLight = Color(0xff00B0AA);
Color themeColorDark = Color(0xff005855);

Gradient buttonGradient = LinearGradient(colors: [
  Colors.black.withOpacity(0.7),
  Color(0xff091F05),
], begin: Alignment.topLeft, end: Alignment.bottomRight);

Gradient beatGradient = LinearGradient(colors: [
  themeColorDark,
  themeColorLight,
], begin: Alignment.centerLeft, end: Alignment.centerRight);
