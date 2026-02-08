import 'package:flutter/material.dart';
import 'package:ui_utility_package/enums.dart';
import 'package:ui_utility_package/ui_utility_package.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  UiUtilityPackage uiUtilityPackage = UiUtilityPackage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: uiUtilityPackage.customText(
          text: 'Card page',
          fontSize: TextSize.large,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Basic card widget
            uiUtilityPackage.customCard(
              widget: Column(
                children: [
                  uiUtilityPackage.customText(
                    text: 'Card Widget',
                    fontSize: TextSize.title,
                  ),
                  uiUtilityPackage.customText(
                    text:
                        'This is a reusable card widget added in the UI Utilities package.',
                    fontSize: TextSize.subTitle,
                  ),
                ],
              ),
            ),

            ///Card with background color
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: Column(
                children: [
                  uiUtilityPackage.customText(
                    text: 'Card Widget - Color',
                    fontSize: TextSize.title,
                    color: TextColors.secondary,
                  ),
                  uiUtilityPackage.customText(
                    text:
                        'This is a reusable card widget added in the UI Utilities package. This also has a custom background colour for the card.',
                    fontSize: TextSize.subTitle,
                    color: TextColors.secondary,
                  ),
                ],
              ),
            ),

            ///Card with shadow color
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              shadowColor: Color(0xffdc3545),
              widget: Column(
                children: [
                  uiUtilityPackage.customText(
                    text: 'Card Widget - Shadow',
                    fontSize: TextSize.title,
                    color: TextColors.secondary,
                  ),
                  uiUtilityPackage.customText(
                    text:
                        'This reusable card widget has a custom background colour. It also has a customised shadow color.',
                    fontSize: TextSize.subTitle,
                    color: TextColors.secondary,
                  ),
                ],
              ),
            ),

            ///Card with tint
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              shadowColor: Color(0xffdc3545),
              surfaceTintColor: Color(0xffffc107),
              widget: Column(
                children: [
                  uiUtilityPackage.customText(
                    text: 'Card Widget - Tint',
                    fontSize: TextSize.title,
                    color: TextColors.secondary,
                  ),
                  uiUtilityPackage.customText(
                    text:
                        'This reusable card widget has a custom background colour. It also has a customised shadow color. It also has a surface tint color.',
                    fontSize: TextSize.subTitle,
                    color: TextColors.secondary,
                  ),
                ],
              ),
            ),

            ///Card with custom elevation
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              shadowColor: Color(0xffdc3545),
              surfaceTintColor: Color(0xffffc107),
              elevation: 16,
              widget: Column(
                children: [
                  uiUtilityPackage.customText(
                    text: 'Card Widget - Elevation',
                    fontSize: TextSize.title,
                    color: TextColors.secondary,
                  ),
                  uiUtilityPackage.customText(
                    text:
                        'This reusable card widget has all the previous properties and a customised elevation. This increases the spread of the shadow color.',
                    fontSize: TextSize.subTitle,
                    color: TextColors.secondary,
                  ),
                ],
              ),
            ),

            ///Nested cards
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              shadowColor: Color(0xffdc3545),
              widget: Column(
                children: [
                  uiUtilityPackage.customText(
                    text: 'Parent Card',
                    fontSize: TextSize.title,
                    color: TextColors.secondary,
                  ),
                  uiUtilityPackage.customCard(
                    color: Color(0xff616060),
                    shadowColor: Color(0xffffffff),
                    surfaceTintColor: Color(0xffffc107),
                    elevation: 16,
                    widget: Column(
                      children: [
                        uiUtilityPackage.customText(
                          text: 'Child Card',
                          fontSize: TextSize.title,
                          color: TextColors.secondary,
                        ),
                        uiUtilityPackage.customText(
                          text:
                              'This reusable card widget has all the previous properties. This is also a nested card, differentiated by the titles "Parent Card" and "Child Card"',
                          fontSize: TextSize.subTitle,
                          color: TextColors.secondary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
