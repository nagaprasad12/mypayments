

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mypayments/constants/colors.dart';
import 'package:mypayments/enums/validations.dart';
import 'package:mypayments/utils/widgets/commons/validation.dart';

/// [TextFormFieldWidget] Custom Widget
class TextFormFieldWidget extends StatelessWidget {
  /// [TextFormFieldWidget] Custom Widget Constructor
  const TextFormFieldWidget({
    Key? key,
    required this.controller,
    this.hint,
    this.isEnabled = true,
    this.formatter,
    this.inputAction = TextInputAction.next,
    this.inputType = TextInputType.text,
    this.validationType = Validations.requiredFieldValidator,
    this.isLabelFloating = true,
    this.hasBorder = false,
    this.obscure = false,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.onChanged,
    this.isPasswordMatch = false,
    this.onEditingComplete,
    this.errorText,
    this.validator,
  }) : super(key: key);

  /// [controller] TextEditingController for the TextFormField
  final TextEditingController controller;

  /// [hint] TextField Hint text widget
  final String? hint;

  /// [isEnabled] TextField Enabled
  final bool isEnabled;

  ///  [formatter] TextField Formatter
  final List<TextInputFormatter>? formatter;

  /// [inputAction] TextField Input Action
  final TextInputType inputType;

  /// [inputAction] TextField Input Action
  final TextInputAction inputAction;

  /// [isLabelFloating] TextField Label Floating
  final bool isLabelFloating;

  /// [hasBorder] TextField Has Border
  final bool hasBorder;

  /// [validationType] TextField Validation Type
  final Validations validationType;

  /// [prefixIcon] TextField Prefix Icon
  final Widget? prefixIcon;

  /// [suffixIcon] TextField Suffix Icon
  final Widget? suffixIcon;

  /// [obscure] TextField Obscure
  final bool obscure;

  /// [onTap] TextField On Tap
  final VoidCallback? onTap;

  /// [maxLength] TextField Max Length
  final int? maxLength;

  /// [maxLines] TextField Max Lines
  final int? maxLines;

  /// [minLines] TextField Min Lines
  final int? minLines;

  /// [onChanged] TextField On Changed
  final ValueChanged<String>? onChanged;

  /// [isPasswordMatch] TextField On Changed
  final bool isPasswordMatch;

  /// [onEditingComplete] TextField On Editing Complete
  final VoidCallback? onEditingComplete;

  /// [errorText] TextField On Editing Complete
  final String? errorText;

  /// [validator] TextField Validator
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      maxLength: maxLength,
      maxLines: maxLines,
      minLines: minLines,
      autocorrect: false,
      enableSuggestions: false,
      enableInteractiveSelection: true,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        errorText: errorText,
        errorMaxLines: 2,
        fillColor: isEnabled ? Colors.white : Colors.grey.shade100,
        labelText: isLabelFloating ? hint : null,
        hintText: !isLabelFloating ? hint : '',
        hintStyle: TextStyle(color: customColors.hintColor),
        enabled: isEnabled,
        counter: const Offstage(),
        contentPadding: (prefixIcon == null)
            ? const EdgeInsets.symmetric(
                vertical: 14.5,
                horizontal: 10.0,
              )
            : EdgeInsets.only(
                right: 10.w,
                top: 8.h,
                bottom: 8.h,
              ),
        enabledBorder: hasBorder
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(
                  color: customColors.hintColor,
                  width: 0.5,
                ),
              )
            : null,
        errorBorder: hasBorder && validator != null
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(
                  color: customColors.hintColor,
                  width: 0.5,
                ),
              )
            : null,
        focusedErrorBorder: hasBorder && validator != null
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(
                  color: customColors.hintColor,
                  width: 0.5,
                ),
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: customColors.lightBlack,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        border: hasBorder
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(
                  color: customColors.hintColor,
                  width: 0.5,
                ),
              )
            : null,
        prefixIcon: (prefixIcon == null) ? null : prefixIcon,
        suffixIcon: (suffixIcon == null) ? null : suffixIcon,
      ),
      inputFormatters: formatter,
      keyboardType: inputType,
      textInputAction: inputAction,
      onTap: onTap,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      readOnly: onTap == null ? false : true,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      validator: validator ??
          (value) {
            var resultValidate =
                Validation.validateTextFormField(value!, validationType);
        if (resultValidate != null) {
          return resultValidate;
        }
        return null;
      },
    );
  }
}
