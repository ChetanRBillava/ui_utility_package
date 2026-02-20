import 'package:flutter/material.dart';
import 'package:ui_utility_package/enums.dart';
import 'package:ui_utility_package/ui_utility_package.dart';

class PopupPage extends StatefulWidget {
  const PopupPage({super.key});

  @override
  State<PopupPage> createState() => _PopupPageState();
}

class _PopupPageState extends State<PopupPage> {
  UiUtilityPackage uiUtilityPackage = UiUtilityPackage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: uiUtilityPackage.customText(
          text: 'Popup Page',
          fontSize: TextSize.large,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Custom Dialog
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      uiUtilityPackage.customText(
                        text: 'Basic Popup',
                        fontSize: TextSize.title,
                        fontWeight: FontWeight.w700,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 8),
                      uiUtilityPackage.customText(
                        text:
                            'This is an example for the custom dialog. Tap on the button to trigger.',
                        fontSize: TextSize.subTitle,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 24),
                      uiUtilityPackage.customButton(
                        buttonText: 'Custom Button',
                        buttonColor: Colors.white,
                        borderColor: Colors.white,
                        onTap:
                            () => uiUtilityPackage.showCustomDialog(
                              context: context,
                              title: 'Basic Dialog Popup',
                              content: uiUtilityPackage.customText(
                                text: 'Popup test',
                                fontSize: TextSize.subTitle,
                                fontWeight: FontWeight.w700,
                              ),
                              actions: <Widget>[
                                uiUtilityPackage.customButton(
                                  buttonText: 'Close',
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///Custom Snackbar
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      uiUtilityPackage.customText(
                        text: 'Custom Snackbar',
                        fontSize: TextSize.title,
                        fontWeight: FontWeight.w700,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 8),
                      uiUtilityPackage.customText(
                        text:
                            'This is an example for the custom snackbar. Tap on the button to trigger.',
                        fontSize: TextSize.subTitle,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 24),
                      uiUtilityPackage.customButton(
                        buttonText: 'Custom Button',
                        buttonColor: Colors.white,
                        borderColor: Colors.white,
                        onTap:
                            () => uiUtilityPackage.showCustomSnackBar(
                              context: context,
                              content: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    child: uiUtilityPackage.customText(
                                      text: 'Testing snackbar',
                                      fontSize: TextSize.title,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///Custom Snackbar
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      uiUtilityPackage.customText(
                        text: 'Custom Toast',
                        fontSize: TextSize.title,
                        fontWeight: FontWeight.w700,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 8),
                      uiUtilityPackage.customText(
                        text:
                            'This is an example for the custom toast. Tap on the button to trigger.',
                        fontSize: TextSize.subTitle,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 24),
                      uiUtilityPackage.customButton(
                        buttonText: 'Custom Button',
                        buttonColor: Colors.white,
                        borderColor: Colors.white,
                        onTap:
                            () => uiUtilityPackage.showCustomToast(
                              context: context,
                              message: 'Testing the toast message',
                              type: ToastType.error,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
