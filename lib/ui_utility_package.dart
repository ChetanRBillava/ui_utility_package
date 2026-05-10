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

  Widget basicText({
    required String text,
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    FontStyle? fontStyle,
    TextAlign? textAlign,
  }) {
    return Text(
      text,
      textAlign: textAlign,
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
    Color? overrideColor,
    FontStyle? fontStyle,
    TextAlign? textAlign,
  }) {
    return basicText(
      text: text,
      textAlign: textAlign,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      fontSize: fontSizeMap[fontSize],
      color: overrideColor ?? textColorsMap[color],
    );
  }

  Widget customCard({
    required Widget widget,
    Color? color,
    Color? shadowColor,
    Color? surfaceTintColor,
    double? elevation,
    Function()? onTap,
    Function()? onDoubleTap,
    Function()? onLongPress,
  }) {
    return GestureDetector(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      child: Card(
        color: color,
        shadowColor: shadowColor,
        surfaceTintColor: surfaceTintColor,
        margin: const EdgeInsets.all(12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: elevation ?? 4,
        child: Padding(padding: const EdgeInsets.all(16), child: widget),
      ),
    );
  }

  Widget customTextField({
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
      controller: initialValue != null ? null : controller,
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

  Widget customButton({
    required Function()? onTap,
     Function()? onDoubleTap,
     Function()? onLongPress,
    String? buttonText,
    double? width,
    ButtonType type = ButtonType.text,
    IconData? icon,
    Color? iconColor,
    Color? buttonColor,
    Color? borderColor,
    TextColors? textColor,
    Color? overrideTextColor,
  }) {
    return InkWell(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      child: Ink(
        decoration: BoxDecoration(
          color: buttonColor,
          border: Border.all(color: borderColor ?? Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        width: width,
        padding: const EdgeInsets.all(8.0),
        child:
            type == ButtonType.icon
                ? Icon(icon, color: iconColor)
                : [ButtonType.iconText, ButtonType.textIcon].contains(type)
                ? Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    type == ButtonType.iconText
                        ? Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(icon, color: iconColor),
                        )
                        : SizedBox.shrink(),
                    customText(
                      text: buttonText ?? '',
                      color: textColor,
                      overrideColor: overrideTextColor,
                      fontSize: TextSize.subTitle,
                      textAlign: TextAlign.center,
                    ),
                    type == ButtonType.textIcon
                        ? Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(icon, color: iconColor),
                        )
                        : SizedBox.shrink(),
                  ],
                )
                : customText(
                  text: buttonText ?? '',
                  color: textColor,
                  overrideColor: overrideTextColor,
                  fontSize: TextSize.subTitle,
                  textAlign: TextAlign.center,
                ),
      ),
    );
  }

  Widget customRadioButton({
    required String radioText,
    required dynamic value,
    required dynamic groupValue,
    required dynamic Function(dynamic)? onChanged,
    Color? activeColor,
    TextColors? textColor,
  }) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          activeColor: activeColor,
        ),
        customText(
          text: radioText,
          fontSize: TextSize.subTitle,
          color: textColor,
        ),
      ],
    );
  }

  Widget customCheckBox({
    required bool isSelected,
    required Function(bool?)? onChanged,
    required String checkboxText,
    TextColors? textColor,
  }) {
    return Row(
      children: [
        Checkbox(value: isSelected, onChanged: onChanged),
        customText(
          text: checkboxText,
          fontSize: TextSize.subTitle,
          color: textColor,
        ),
      ],
    );
  }

  Widget customChip({
    required String label,
    required bool chipSelected,
    required Function(bool)? onSelected,
    TextColors? textColor,
    Color? overrideTextColor,
    Color? selectedColor,
    Color? backgroundColor,
    Color? checkmarkColor,
  }) {
    return ChoiceChip(
      label: customText(text: label, fontSize: TextSize.subTitle,color: textColor, overrideColor: overrideTextColor),
      selected: chipSelected,
      onSelected: onSelected,
      selectedColor: selectedColor,
      backgroundColor: backgroundColor,
      checkmarkColor: checkmarkColor,
    );
  }

  Widget customDropdown({
    required dynamic value,
    required List<DropdownMenuItem<dynamic>>? items,
    required Function(dynamic?)? onChanged,
    Color? backgroundColor,
    Color? iconDisabledColor,
    Color? iconEnabledColor,
    bool isExpanded = true,
    Widget? hint,
  }) {
    return Container(
      color: backgroundColor ?? Colors.white,
      child: DropdownButton(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        value: value,
        dropdownColor: backgroundColor ?? Colors.white,
        iconDisabledColor: iconDisabledColor,
        iconEnabledColor: iconEnabledColor,
        hint: hint,
        isExpanded: isExpanded,
        items: items,
        onChanged: onChanged,
      ),
    );
  }

  void showCustomDialog({
    required BuildContext context,
    required String title,
    required Widget content,
    required List<Widget> actions,
    TextColors? titleTextColor,
    Color? overrideTitleTextColor,
    Widget? icon,
    Color? iconColor,
    Color? backgroundColor,
    double? elevation,
    Color? shadowColor,
    Color? surfaceTintColor,
    bool scrollable = false,
    bool barrierDismissible = true,
    ShapeBorder? shape,
  }) {
    showDialog(
      context: context,
        barrierDismissible:barrierDismissible,
      builder: (BuildContext context) {
        return AlertDialog(
          scrollable: scrollable,
          backgroundColor: backgroundColor,
          elevation: elevation,
          shadowColor: shadowColor,
          surfaceTintColor: surfaceTintColor,
          icon: icon,
          iconColor: iconColor,
          title: customText(
            text: title,
            fontSize: TextSize.title,
            fontWeight: FontWeight.w700,
            color: titleTextColor,
            overrideColor: overrideTitleTextColor,
          ),
          content: content,
          actions: actions,
          shape: shape,
        );
      },
    );
  }

  void showCustomSnackBar({
    required BuildContext context,
    required Widget content,
    TextColors? titleTextColor,
    Color? backgroundColor,
    Color? closeIconColor,
    Duration duration = const Duration(seconds: 5),
    SnackBarBehavior? behavior,
    ShapeBorder? shape,
    bool showCloseIcon = true,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: content,
        backgroundColor: backgroundColor,
        duration: duration,
        behavior: behavior,
        shape: shape,
        elevation: 50,
        showCloseIcon: showCloseIcon,
        closeIconColor: closeIconColor,
      ),
    );
  }

  void showCustomToast({
    required BuildContext context,
    required String message,
    ToastType type = ToastType.info,
    Duration duration = const Duration(seconds: 2),
    double? bottomPadding,

    Color? bgColor,
    Widget? icon,
  }) {
    final overlay = Overlay.of(context);

    final overlayEntry = OverlayEntry(
      builder:
          (context) => Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: bottomPadding ?? 100.0),
              child: Material(
                elevation: 8,
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      icon == null
                          ? SizedBox.shrink()
                          : Row(children: [icon, SizedBox(width: 8)]),
                      Flexible(
                        child: customText(
                          text: message,
                          fontSize: TextSize.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
    );

    overlay.insert(overlayEntry);
    Future.delayed(duration, () => overlayEntry.remove());
  }
}
