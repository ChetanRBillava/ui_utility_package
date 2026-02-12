import 'package:example/card_page.dart';
import 'package:example/text_fields_page.dart';
import 'package:example/text_page.dart';
import 'package:flutter/material.dart';
import 'package:ui_utility_package/enums.dart';
import 'package:ui_utility_package/ui_utility_package.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UiUtilityPackage uiUtilityPackage = UiUtilityPackage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: uiUtilityPackage.customText(
          text: 'Home page',
          fontSize: TextSize.large,
        ),
      ),
      body: Column(
        children: [
          ///Text widgets
          GestureDetector(
            onDoubleTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TextPage()),
              );
            },
            child: uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: Column(
                children: [
                  uiUtilityPackage.customText(
                    text: 'Text Examples',
                    fontSize: TextSize.title,
                    color: TextColors.secondary,
                  ),
                  uiUtilityPackage.customText(
                    text:
                        'Double tap to go to a page where examples related to different variations of the custom text widget can be found.',
                    fontSize: TextSize.subTitle,
                    color: TextColors.secondary,
                  ),
                ],
              ),
            ),
          ),

          ///Card widgets
          GestureDetector(
            onDoubleTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CardPage()),
              );
            },
            child: uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: Column(
                children: [
                  uiUtilityPackage.customText(
                    text: 'Card Examples',
                    fontSize: TextSize.title,
                    color: TextColors.secondary,
                  ),
                  uiUtilityPackage.customText(
                    text:
                        'Double tap to go to a page where examples related to different variations of the custom card widget can be found.',
                    fontSize: TextSize.subTitle,
                    color: TextColors.secondary,
                  ),
                ],
              ),
            ),
          ),

          ///Text Field widgets
          GestureDetector(
            onDoubleTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FormFieldsPage()),
              );
            },
            child: uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: Column(
                children: [
                  uiUtilityPackage.customText(
                    text: 'Text Field Examples',
                    fontSize: TextSize.title,
                    color: TextColors.secondary,
                  ),
                  uiUtilityPackage.customText(
                    text:
                        'Double tap to go to a page where examples related to different variations of the custom form field widget can be found.',
                    fontSize: TextSize.subTitle,
                    color: TextColors.secondary,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
