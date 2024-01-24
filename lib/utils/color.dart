import 'package:flutter/material.dart';

enum ColorStates {
  blue,
  yellow,
  green,
  purple,
  darkBlue,
}

extension ColorStatesExtension on ColorStates {
  Color get color {
    switch (this) {
      case ColorStates.blue:
        return const Color(0xFF2196F3);
      case ColorStates.yellow:
        return const Color(0xFFFFEB3B);
      case ColorStates.green:
        return const Color(0xFF4CAF50);
      case ColorStates.purple:
        return const Color(0xFF6B12AA);
      case ColorStates.darkBlue:
        return const Color(0xFF2731E4);
    }
  }
}

class ColorHelper {
  static ColorStates getValue(double colorValue) {
    switch (colorValue) {
      case 0:
        return ColorStates.blue;
      case 1:
        return ColorStates.yellow;
      case 2:
        return ColorStates.green;
      case 3:
        return ColorStates.purple;
      case 4:
        return ColorStates.darkBlue;
      default:
        return ColorStates.blue;
    }
  }

  static double stateFromString(String colorValue) {
    switch (colorValue) {
      case "Blue":
        return 0;
      case "Yellow":
        return 1;
      case "Green":
        return 2;
      case "Purple":
        return 3;
      case "DarkBlue":
        return 4;
      default:
        return -1;
    }
  }
}
