import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA7004c = fromHex('#4cffffff');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color blueGray400 = fromHex('#888888');

  static Color gray900 = fromHex('#242424');

  static Color lightBlue700 = fromHex('#067fcd');

  static Color deepPurple600 = fromHex('#5a27c8');

  static Color red400 = fromHex('#e25c5c');

  static Color greenA400 = fromHex('#01cc88');

  static Color whiteA70033 = fromHex('#33ffffff');

  static Color black90033 = fromHex('#33000000');

  static Color indigo200 = fromHex('#9db2ce');

  static Color black900 = fromHex('#000000');

  static Color black90007 = fromHex('#07000000');

  static Color black90019 = fromHex('#19000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color cyan500 = fromHex('#01ccbf');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
