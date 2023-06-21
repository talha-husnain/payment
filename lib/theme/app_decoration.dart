import 'package:flutter/material.dart';
import 'package:payment/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillGreenA400 => BoxDecoration(
        color: ColorConstant.greenA400,
      );
  static BoxDecoration get fillDeeppurple600 => BoxDecoration(
        color: ColorConstant.deepPurple600,
      );
  static BoxDecoration get fillCyan500 => BoxDecoration(
        color: ColorConstant.cyan500,
      );
  static BoxDecoration get fillLightblue700 => BoxDecoration(
        color: ColorConstant.lightBlue700,
      );
  static BoxDecoration get fillWhiteA70033 => BoxDecoration(
        color: ColorConstant.whiteA70033,
      );
  static BoxDecoration get outlineBlack90007 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90007,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder39 = BorderRadius.circular(
    getHorizontalSize(
      39,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
