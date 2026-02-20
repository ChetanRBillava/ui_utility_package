import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_utility_package/enums.dart';
import 'package:ui_utility_package/ui_utility_package.dart';

class FormFieldsPage extends StatefulWidget {
  const FormFieldsPage({super.key});

  @override
  State<FormFieldsPage> createState() => _FormFieldsPageState();
}

class _FormFieldsPageState extends State<FormFieldsPage> {
  UiUtilityPackage uiUtilityPackage = UiUtilityPackage();
  static final Map<String, TextEditingController> textFormFieldControllers = {};
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool obscure = true;
  static TextEditingController getTextFormFieldController(String key) {
    return textFormFieldControllers.putIfAbsent(
      key,
      () => TextEditingController(),
    );
  }

  String getTextFieldValue({required String key}) {
    return getTextFormFieldController(key).text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: uiUtilityPackage.customText(
          text: 'Text Fields Page',
          fontSize: TextSize.large,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Basic text field
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    uiUtilityPackage.customText(
                      text: 'Basic Text Field',
                      fontSize: TextSize.title,
                      fontWeight: FontWeight.w700,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 8),
                    uiUtilityPackage.customText(
                      text:
                          'This is a very basic text field with just an input field and no other parameters.',
                      fontSize: TextSize.subTitle,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 24),
                    uiUtilityPackage.customTextField(
                      controller: getTextFormFieldController(
                        'basic_text_field',
                      ),
                      context: context,
                    ),
                  ],
                ),
              ),
            ),

            ///Auto focus text field
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    uiUtilityPackage.customText(
                      text: 'Auto Focus Text Field',
                      fontSize: TextSize.title,
                      fontWeight: FontWeight.w700,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 8),
                    uiUtilityPackage.customText(
                      text:
                          'This text field is automatically focused on land to the page.',
                      fontSize: TextSize.subTitle,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 24),
                    uiUtilityPackage.customTextField(
                      controller: getTextFormFieldController(
                        'auto_focus_text_field',
                      ),
                      context: context,
                      autofocus: true,
                    ),
                  ],
                ),
              ),
            ),

            ///Disabled text field
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    uiUtilityPackage.customText(
                      text: 'Disabled Text Field',
                      fontSize: TextSize.title,
                      fontWeight: FontWeight.w700,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 8),
                    uiUtilityPackage.customText(
                      text:
                          'This text field is prefilled and disabled for any user input.',
                      fontSize: TextSize.subTitle,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 24),
                    uiUtilityPackage.customTextField(
                      context: context,
                      enabled: false,
                      initialValue: 'This text field is disabled',
                    ),
                  ],
                ),
              ),
            ),

            ///Text field with hint text and label
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    uiUtilityPackage.customText(
                      text: 'Hint text and Label',
                      fontSize: TextSize.title,
                      fontWeight: FontWeight.w700,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 8),
                    uiUtilityPackage.customText(
                      text: 'This text field has a label and a hint text.',
                      fontSize: TextSize.subTitle,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 24),
                    uiUtilityPackage.customTextField(
                      controller: getTextFormFieldController(
                        'label_hint_text_field',
                      ),
                      context: context,
                      labelText: 'This is a label',
                      hintText: 'This is a hint text',
                    ),
                  ],
                ),
              ),
            ),

            ///Text field with fixed label
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    uiUtilityPackage.customText(
                      text: 'Fixed Label',
                      fontSize: TextSize.title,
                      fontWeight: FontWeight.w700,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 8),
                    uiUtilityPackage.customText(
                      text:
                          'The label text of this text field is always fixed to top.',
                      fontSize: TextSize.subTitle,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 24),
                    uiUtilityPackage.customTextField(
                      controller: getTextFormFieldController(
                        'fixed_label_text_field',
                      ),
                      context: context,
                      labelText: 'This is a fixed label',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: 'Type something...',
                    ),
                  ],
                ),
              ),
            ),

            ///Text field with fixed label
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    uiUtilityPackage.customText(
                      text: 'Custom Label',
                      fontSize: TextSize.title,
                      fontWeight: FontWeight.w700,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 8),
                    uiUtilityPackage.customText(
                      text:
                          'In this text field the label is added externally as a simple text widget outside of our text field widget.',
                      fontSize: TextSize.subTitle,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        uiUtilityPackage.customText(
                          text: 'Custom label',
                          fontSize: TextSize.label,
                          color: TextColors.secondary,
                        ),
                        uiUtilityPackage.customTextField(
                          controller: getTextFormFieldController(
                            'custom_label_text_field',
                          ),
                          context: context,
                          hintText: 'Type something...',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            ///Obscure text field
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    uiUtilityPackage.customText(
                      text: 'Obscure text field',
                      fontSize: TextSize.title,
                      fontWeight: FontWeight.w700,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 8),
                    uiUtilityPackage.customText(
                      text:
                          'The input of this text field is hidden or obscured and replaced with a star(*) icon',
                      fontSize: TextSize.subTitle,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 24),
                    uiUtilityPackage.customTextField(
                      controller: getTextFormFieldController(
                        'obscure_text_field',
                      ),
                      context: context,
                      hintText: 'Enter something...',
                      obscureText: true,
                    ),
                  ],
                ),
              ),
            ),

            ///Custom Obscure character
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    uiUtilityPackage.customText(
                      text: 'Custom Obscure character',
                      fontSize: TextSize.title,
                      fontWeight: FontWeight.w700,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 8),
                    uiUtilityPackage.customText(
                      text:
                          'In this text field the obscuring character can be customised to any character.',
                      fontSize: TextSize.subTitle,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 24),
                    uiUtilityPackage.customTextField(
                      controller: getTextFormFieldController(
                        'custom_obscure_text_field',
                      ),
                      context: context,
                      hintText: 'Enter something...',
                      obscureText: true,
                      obscuringCharacter: 'x',
                    ),
                  ],
                ),
              ),
            ),

            ///Text field with icons
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    uiUtilityPackage.customText(
                      text: 'Icons in text field',
                      fontSize: TextSize.title,
                      fontWeight: FontWeight.w700,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 8),
                    uiUtilityPackage.customText(
                      text:
                          'In this text field we have appended 3 icons. One icon outside the text field, one inside as a prefix and another inside as a suffix.',
                      fontSize: TextSize.subTitle,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 24),
                    uiUtilityPackage.customTextField(
                      controller: getTextFormFieldController(
                        'text_field_with_icons',
                      ),
                      context: context,
                      hintText: 'Type something...',
                      icon: Icon(Icons.search),
                      prefixIcon: Icon(Icons.person),
                      suffixIcon: Icon(Icons.close),
                    ),
                  ],
                ),
              ),
            ),

            ///Functioning icons
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    uiUtilityPackage.customText(
                      text: 'Functioning icons',
                      fontSize: TextSize.title,
                      fontWeight: FontWeight.w700,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 8),
                    uiUtilityPackage.customText(
                      text:
                          'In this text field the prefix and suffix icons are able to update certain conditions of the text field. It also has custom icon colours.',
                      fontSize: TextSize.subTitle,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 24),
                    uiUtilityPackage.customTextField(
                      controller: getTextFormFieldController(
                        'functioning_icons',
                      ),
                      context: context,
                      hintText: 'Type something...',
                      obscureText: obscure,
                      prefixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            obscure = !obscure;
                          });
                        },
                        child: Icon(
                          obscure ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                      prefixIconColor: Color(obscure ? 0xff263bde : 0xffe6c109),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          textFormFieldControllers['functioning_icons']
                              ?.clear();
                        },
                        child: Icon(Icons.close),
                      ),
                      suffixIconColor: Color(0xffdc3545),
                    ),
                  ],
                ),
              ),
            ),

            ///Phone number field
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    uiUtilityPackage.customText(
                      text: 'Phone number field',
                      fontSize: TextSize.title,
                      fontWeight: FontWeight.w700,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 8),
                    uiUtilityPackage.customText(
                      text:
                          'In this text field we change the input type to number to accommodate a phone number. '
                          'We also restrict the length to 10 and validate the input.',
                      fontSize: TextSize.subTitle,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 24),
                    Form(
                      key: formKey,
                      child: uiUtilityPackage.customTextField(
                        controller: getTextFormFieldController(
                          'phone_number_field',
                        ),
                        context: context,
                        hintText: 'Type something...',
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        maxLength: 10,
                        validator: (v) {
                          if (v == null) {
                            return 'Please enter something!';
                          } else if (int.tryParse(v[0])! < 6) {
                            return 'Please enter a valid phone number';
                          } else if (v.length != 10) {
                            return 'Please enter 10 digits';
                          } else {
                            return null;
                          }
                        },
                        onChanged: (v) {
                          formKey.currentState?.validate();
                        },
                        counterTextColor:
                            uiUtilityPackage.textColorsMap[TextColors
                                .secondary],
                        prefixIcon: Icon(Icons.phone),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            textFormFieldControllers['phone_number_field']
                                ?.clear();
                          },
                          child: Icon(Icons.close),
                        ),
                        suffixIconColor: Color(0xffdc3545),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ///Long input
            uiUtilityPackage.customCard(
              color: Color(0xff616060),
              widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    uiUtilityPackage.customText(
                      text: 'Long Input',
                      fontSize: TextSize.title,
                      fontWeight: FontWeight.w700,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 8),
                    uiUtilityPackage.customText(
                      text:
                          'In this text field the user can input a very long text with character limit up to 500. '
                          'The text field dynamically expands to fit the input.',
                      fontSize: TextSize.subTitle,
                      color: TextColors.secondary,
                    ),
                    SizedBox(height: 24),
                    uiUtilityPackage.customTextField(
                      controller: getTextFormFieldController(
                        'long_input_text_field',
                      ),
                      context: context,
                      hintText: 'Type something...',
                      minLines: 1,
                      maxLines: 5,
                      maxLength: 500,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          textFormFieldControllers['long_input_text_field']
                              ?.clear();
                        },
                        child: Icon(Icons.close),
                      ),
                      suffixIconColor: Color(0xffdc3545),
                      counterTextColor:
                          uiUtilityPackage.textColorsMap[TextColors.secondary],
                    ),
                  ],
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
