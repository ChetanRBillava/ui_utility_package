import 'package:flutter/material.dart';

import 'enums.dart';

class UiUtilityPackage {
  ///Map of all text sizes
  Map<TextSize, double> fontSizeMap = {
    TextSize.normal: 12,
    TextSize.medium: 14,
    TextSize.label: 16,
    TextSize.title: 24,
    TextSize.subTitle: 18,
    TextSize.large: 32,
    TextSize.xl: 48,
  };

  Map<TextColors, Color> textColorsMap = {
    TextColors.primary: Color(0xff000000),
    TextColors.secondary: Color(0xffffffff),
    TextColors.accent: Color(0xff616060),
    TextColors.success: Color(0xff28a745),
    TextColors.danger: Color(0xffdc3545),
    TextColors.info: Color(0xff17a2b8),
    TextColors.warning: Color(0xffffc107),
  };

  Widget basicText({
    required String text,
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    FontStyle? fontStyle,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontStyle: fontStyle,
      ),
    );
  }

  Widget customText({
    required String text,
    required TextSize? fontSize,
    FontWeight? fontWeight,
    TextColors? color,
    FontStyle? fontStyle,
  }) {
    return basicText(
      text: text,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      fontSize: fontSizeMap[fontSize],
      color: textColorsMap[color],
    );
  }
}
