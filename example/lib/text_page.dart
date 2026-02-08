import 'package:flutter/material.dart';
import 'package:ui_utility_package/enums.dart';
import 'package:ui_utility_package/ui_utility_package.dart';

class TextPage extends StatefulWidget {
  const TextPage({super.key});

  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  UiUtilityPackage uiUtilityPackage = UiUtilityPackage();

  bool hideTextSizes = true, hideFontWeight = true, hideTextColors = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: uiUtilityPackage.customText(
          text: 'Text page',
          fontSize: TextSize.large,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ///Text Sizes
              GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    hideTextSizes = !hideTextSizes;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Texts(
                      widgetAlignment: CrossAxisAlignment.center,
                      labelText: 'Text Sizes',
                      labelSize: TextSize.xl,
                      displayText:
                          'Double tap to ${hideTextSizes ? 'view' : 'hide'}',
                      displaySize: TextSize.normal,
                      displayColor: TextColors.accent,
                    ),
                  ],
                ),
              ),
              hideTextSizes
                  ? SizedBox.shrink()
                  : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Texts(
                        labelText: 'Normal Text',
                        labelSize: TextSize.large,
                        displayText:
                            'This is a text with 12 size - TextSize.normal',
                        displaySize: TextSize.normal,
                      ),
                      SizedBox(height: 16),
                      Texts(
                        labelText: 'Medium Text',
                        labelSize: TextSize.large,
                        displayText:
                            'This is a text with 14 size - TextSize.medium',
                        displaySize: TextSize.medium,
                      ),
                      SizedBox(height: 16),
                      Texts(
                        labelText: 'Label Text',
                        labelSize: TextSize.large,
                        displayText:
                            'This is a text with 16 size - TextSize.label',
                        displaySize: TextSize.label,
                      ),
                      SizedBox(height: 16),
                      Texts(
                        labelText: 'Title Text',
                        labelSize: TextSize.large,
                        displayText:
                            'This is a text with 24 size - TextSize.title',
                        displaySize: TextSize.title,
                      ),
                      SizedBox(height: 16),
                      Texts(
                        labelText: 'Sub Title Text',
                        labelSize: TextSize.large,
                        displayText:
                            'This is a text with 18 size - TextSize.subTitle',
                        displaySize: TextSize.subTitle,
                      ),
                      SizedBox(height: 16),
                      Texts(
                        labelText: 'Large Text',
                        labelSize: TextSize.large,
                        displayText:
                            'This is a text with 32 size - TextSize.large',
                        displaySize: TextSize.large,
                      ),
                      SizedBox(height: 16),
                      Texts(
                        labelText: 'Extra Large Text',
                        labelSize: TextSize.large,
                        displayText:
                            'This is a text with 48 size - TextSize.xl',
                        displaySize: TextSize.xl,
                      ),
                    ],
                  ),
              SizedBox(height: 32),

              ///Font Weight
              GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    hideFontWeight = !hideFontWeight;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Texts(
                      widgetAlignment: CrossAxisAlignment.center,
                      labelText: 'Font weight',
                      labelSize: TextSize.xl,
                      displayText:
                          'Double tap to ${hideFontWeight ? 'view' : 'hide'}',
                      displaySize: TextSize.normal,
                      displayColor: TextColors.accent,
                    ),
                  ],
                ),
              ),
              hideFontWeight
                  ? SizedBox.shrink()
                  : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Texts(
                        labelText: 'Normal Text',
                        labelSize: TextSize.large,
                        displayText: 'This is a normal text - FontWeight.w300',
                        displayFontWeight: FontWeight.w300,
                      ),
                      SizedBox(height: 16),
                      Texts(
                        labelText: 'Bold Text',
                        labelSize: TextSize.large,
                        displayText: 'This is a bold text - FontWeight.w500',
                        displayFontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 16),
                      Texts(
                        labelText: 'Extra Bold Text',
                        labelSize: TextSize.large,
                        displayText:
                            'This is an extra bold text - FontWeight.w900',
                        displayFontWeight: FontWeight.w900,
                      ),
                    ],
                  ),
              SizedBox(height: 32),

              ///Text Colors
              GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    hideTextColors = !hideTextColors;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Texts(
                      widgetAlignment: CrossAxisAlignment.center,
                      labelText: 'Text Color',
                      labelSize: TextSize.xl,
                      displayText:
                          'Double tap to ${hideTextColors ? 'view' : 'hide'}',
                      displaySize: TextSize.normal,
                      displayColor: TextColors.accent,
                    ),
                  ],
                ),
              ),
              hideTextColors
                  ? SizedBox.shrink()
                  : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Texts(
                        labelText: 'Primary Text Color',
                        displayText: 'This is the primary text color',
                        displayFontWeight: FontWeight.w700,
                      ),
                      SizedBox(height: 16),
                      Texts(
                        labelText: 'Accent Text Color',
                        displayText: 'This is the accent text color',
                        displayColor: TextColors.accent,
                        displayFontWeight: FontWeight.w700,
                      ),
                      SizedBox(height: 16),
                      Texts(
                        labelText: 'Success Text Color',
                        displayText: 'This is the success text color',
                        displayColor: TextColors.success,
                        displayFontWeight: FontWeight.w700,
                      ),
                      SizedBox(height: 16),
                      Texts(
                        labelText: 'Danger Text Color',
                        displayText: 'This is the danger text color',
                        displayColor: TextColors.danger,
                        displayFontWeight: FontWeight.w700,
                      ),
                      SizedBox(height: 16),
                      Texts(
                        labelText: 'Info Text Color',
                        displayText: 'This is the info text color',
                        displayColor: TextColors.info,
                        displayFontWeight: FontWeight.w700,
                      ),
                      SizedBox(height: 16),
                      Texts(
                        labelText: 'Warning Text Color',
                        displayText: 'This is the warning text color',
                        displayColor: TextColors.warning,
                        displayFontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

class Texts extends StatelessWidget {
  Texts({
    super.key,
    required this.labelText,
    required this.displayText,
    this.widgetAlignment,
    this.labelSize,
    this.displaySize,
    this.displayFontWeight,
    this.displayColor,
  });

  final String labelText, displayText;
  TextSize? labelSize, displaySize;
  FontWeight? displayFontWeight;
  TextColors? displayColor;
  CrossAxisAlignment? widgetAlignment;

  final UiUtilityPackage uiUtilityPackage = UiUtilityPackage();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: widgetAlignment ?? CrossAxisAlignment.start,
      children: [
        uiUtilityPackage.customText(
          text: labelText,
          fontSize: labelSize ?? TextSize.large,
        ),
        uiUtilityPackage.customText(
          text: displayText,
          fontSize: displaySize ?? TextSize.label,
          fontWeight: displayFontWeight ?? FontWeight.w300,
          color: displayColor ?? TextColors.primary,
        ),
      ],
    );
  }
}
