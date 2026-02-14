import 'package:flutter/material.dart';
import 'package:ui_utility_package/enums.dart';
import 'package:ui_utility_package/ui_utility_package.dart';

class OtherFormFieldsPage extends StatefulWidget {
  const OtherFormFieldsPage({super.key});

  @override
  State<OtherFormFieldsPage> createState() => _OtherFormFieldsPageState();
}

class _OtherFormFieldsPageState extends State<OtherFormFieldsPage> {
  UiUtilityPackage uiUtilityPackage = UiUtilityPackage();
  int radioVal = 0;
  bool checkBoxVal = false;
  Map<String, bool> chips = {};
  String? dropdownVal;
  List<String> dropdownValues = ['ABC', 'MNO', 'XYZ'];

  setRadio(int v) {
    setState(() {
      radioVal = v;
    });
  }

  setCheckbox(bool v) {
    setState(() {
      checkBoxVal = !checkBoxVal;
    });
  }

  setChip({required String key, required bool value}) {
    print('Chip value: ${chips[key]}');
    if (!chips.containsKey(key)) {
      setState(() {
        chips[key] = true;
      });
    } else {
      setState(() {
        chips[key] = !chips[key]!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: uiUtilityPackage.customText(
          text: 'Other Form Fields Page',
          fontSize: TextSize.large,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Basic Button
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      uiUtilityPackage.customText(
                        text: 'Basic Button',
                        fontSize: TextSize.title,
                        fontWeight: FontWeight.w700,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 8),
                      uiUtilityPackage.customText(
                        text: 'This is a very basic button field.',
                        fontSize: TextSize.subTitle,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 24),
                      uiUtilityPackage.customButton(
                        buttonText: 'Custom Button',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///Icon Button
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      uiUtilityPackage.customText(
                        text: 'Icon Button',
                        fontSize: TextSize.title,
                        fontWeight: FontWeight.w700,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 8),
                      uiUtilityPackage.customText(
                        text: 'This is an icon button field.',
                        fontSize: TextSize.subTitle,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 24),
                      uiUtilityPackage.customButton(
                        type: ButtonType.icon,
                        icon: Icons.add,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///Icon Text Button
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      uiUtilityPackage.customText(
                        text: 'Icon Text Button',
                        fontSize: TextSize.title,
                        fontWeight: FontWeight.w700,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 8),
                      uiUtilityPackage.customText(
                        text:
                            'This is an icon text button field. It has both icon and text.',
                        fontSize: TextSize.subTitle,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 24),
                      uiUtilityPackage.customButton(
                        buttonText: 'Add user',
                        type: ButtonType.iconText,
                        icon: Icons.add,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///Text Icon Button
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      uiUtilityPackage.customText(
                        text: 'Text Icon Button',
                        fontSize: TextSize.title,
                        fontWeight: FontWeight.w700,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 8),
                      uiUtilityPackage.customText(
                        text:
                            'This is a text icon button field. It has both icon and text as before but icon is displayed as a suffix.',
                        fontSize: TextSize.subTitle,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 24),
                      uiUtilityPackage.customButton(
                        buttonText: 'Logout',
                        type: ButtonType.textIcon,
                        icon: Icons.logout,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///Radio Button
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      uiUtilityPackage.customText(
                        text: 'Radio Button',
                        fontSize: TextSize.title,
                        fontWeight: FontWeight.w700,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 8),
                      uiUtilityPackage.customText(
                        text: 'This is a radio button field.',
                        fontSize: TextSize.subTitle,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 24),
                      Row(
                        children: [
                          uiUtilityPackage.customRadioButton(
                            radioText: 'Value 1',
                            onChanged: (v) => setRadio(v),
                            value: 1,
                            groupValue: radioVal,
                            activeColor: Color(0xffffffff),
                            textColor: TextColors.secondary,
                          ),
                          uiUtilityPackage.customRadioButton(
                            radioText: 'Value 2',
                            onChanged: (v) => setRadio(v),
                            value: 2,
                            groupValue: radioVal,
                            activeColor: Color(0xffffffff),
                            textColor: TextColors.secondary,
                          ),
                          uiUtilityPackage.customRadioButton(
                            radioText: 'Value 3',
                            onChanged: (v) => setRadio(v),
                            value: 3,
                            groupValue: radioVal,
                            activeColor: Color(0xffffffff),
                            textColor: TextColors.secondary,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///Check Box
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      uiUtilityPackage.customText(
                        text: 'Check Box',
                        fontSize: TextSize.title,
                        fontWeight: FontWeight.w700,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 8),
                      uiUtilityPackage.customText(
                        text: 'This is a checkbox field.',
                        fontSize: TextSize.subTitle,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 24),
                      uiUtilityPackage.customCheckBox(
                        isSelected: checkBoxVal,
                        onChanged: (v) => setCheckbox(v!),
                        checkboxText: 'This is an active checkbox.',
                        textColor: TextColors.secondary,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///Chips
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      uiUtilityPackage.customText(
                        text: 'Chip widgets',
                        fontSize: TextSize.title,
                        fontWeight: FontWeight.w700,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 8),
                      uiUtilityPackage.customText(
                        text: 'These are choice chips',
                        fontSize: TextSize.subTitle,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          uiUtilityPackage.customChip(
                            label: 'Chip 1',
                            chipSelected: chips['chip1'] ?? false,
                            onSelected: (v) => setChip(value: v, key: 'chip1'),
                          ),
                          SizedBox(width: 8),
                          uiUtilityPackage.customChip(
                            label: 'Chip 2',
                            chipSelected: chips['chip2'] ?? false,
                            onSelected: (v) => setChip(value: v, key: 'chip2'),
                          ),
                          SizedBox(width: 8),
                          uiUtilityPackage.customChip(
                            label: 'Chip 3',
                            chipSelected: chips['chip3'] ?? false,
                            onSelected: (v) => setChip(value: v, key: 'chip3'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///Dropdown
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      uiUtilityPackage.customText(
                        text: 'Custom Dropdown',
                        fontSize: TextSize.title,
                        fontWeight: FontWeight.w700,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 8),
                      uiUtilityPackage.customText(
                        text: 'This is a custom dropdown widget.',
                        fontSize: TextSize.subTitle,
                        color: TextColors.secondary,
                      ),
                      SizedBox(height: 24),
                      uiUtilityPackage.customDropdown(
                        value: dropdownVal,
                        items:
                            List<int>.generate(dropdownValues.length, (i) => i)
                                .map(
                                  (zone) => DropdownMenuItem(
                                    value: dropdownValues[zone],
                                    child: uiUtilityPackage.customText(
                                      text: dropdownValues[zone],
                                      fontSize: TextSize.subTitle,
                                    ),
                                  ),
                                )
                                .toList(),
                        onChanged: (value) {
                          setState(() {
                            dropdownVal = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
