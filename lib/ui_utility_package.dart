import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

  ///Map of all text colors
  Map<TextColors, Color> textColorsMap = {
    TextColors.primary: Color(0xff000000),
    TextColors.secondary: Color(0xffffffff),
    TextColors.accent: Color(0xff616060),
    TextColors.success: Color(0xff28a745),
    TextColors.danger: Color(0xffdc3545),
    TextColors.info: Color(0xff17a2b8),
    TextColors.warning: Color(0xffffc107),
  };

  ///Map of all text field controllers
  static final Map<String, TextEditingController> textFormFieldControllers = {};
  static TextEditingController getTextFormFieldController(String key) {
    return textFormFieldControllers.putIfAbsent(
      key,
      () => TextEditingController(),
    );
  }

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

  Widget customCard({
    required Widget widget,
    Color? color,
    Color? shadowColor,
    Color? surfaceTintColor,
    double? elevation,
  }) {
    return Card(
      color: color,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: elevation ?? 4,
      child: Padding(padding: const EdgeInsets.all(16), child: widget),
    );
  }

  String getTextFieldValue({required String key}) {
    return getTextFormFieldController(key).text;
  }

  Widget customTextField({
    required String key,
    required BuildContext context,
    TextEditingController? controller,
    Function(String)? onChanged,
    String? Function(String?)? validator,
    List<TextInputFormatter>? inputFormatters,
    String? labelText,
    Widget? label,
    FloatingLabelBehavior? floatingLabelBehavior,
    String? hintText,
    TextStyle? style,
    Color? counterTextColor,
    String? initialValue,
    Widget? icon,
    Color? iconColor,
    Widget? prefixIcon,
    Color? prefixIconColor,
    Widget? suffixIcon,
    Color? suffixIconColor,
    TextInputType? keyboardType,
    TextCapitalization? textCapitalization,
    TextInputAction? textInputAction,
    TextDirection? textDirection,
    TextAlign? textAlign,
    bool enabled = true,
    bool obscureText = false,
    String obscuringCharacter = '*',
    bool readOnly = false,
    bool autofocus = false,
    bool expands = false,
    int maxLines = 1,
    int minLines = 1,
    int? maxLength,
  }) {
    return TextFormField(
      controller:
          initialValue != null
              ? null
              : controller ?? getTextFormFieldController(key),
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xfff5f5f5),
        labelText: labelText,
        label: label,
        floatingLabelBehavior: floatingLabelBehavior,
        hintText: hintText,
        icon: icon,
        iconColor: iconColor,
        prefixIcon: prefixIcon,
        prefixIconColor: prefixIconColor,
        suffixIcon: suffixIcon,
        suffixIconColor: suffixIconColor,
        counterStyle: TextStyle(color: counterTextColor),
        errorStyle: TextStyle(color: textColorsMap[TextColors.danger]),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(width: 1, color: Color(0xffdc3545)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(width: 1, color: Color(0xffdc3545)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(width: 1, color: Color(0xff040404)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(width: 1, color: Color(0xff040404)),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(width: 1, color: Color(0xff040404)),
        ),
      ),
      style: TextStyle(),
      initialValue: initialValue,
      keyboardType: keyboardType ?? TextInputType.text,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      textInputAction: textInputAction ?? TextInputAction.none,
      textDirection: textDirection ?? TextDirection.ltr,
      textAlign: textAlign ?? TextAlign.start,
      enabled: enabled,
      autofocus: autofocus,
      obscureText: obscureText,
      obscuringCharacter: obscuringCharacter,
      readOnly: readOnly,
      maxLines: maxLines,
      minLines: minLines,
      expands: expands,
      maxLength: maxLength,
      inputFormatters: inputFormatters,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
    );
  }
}
