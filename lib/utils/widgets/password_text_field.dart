

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mypayments/constants/colors.dart';
import 'package:mypayments/constants/strings.dart';
import 'package:mypayments/enums/validations.dart';
import 'package:mypayments/utils/widgets/text_form_field.dart';

class PasswordFieldWidget extends StatefulWidget {
  const PasswordFieldWidget({
    Key? key,
    required this.controller,
    this.validationType = Validations.requiredFieldValidator,
    this.inputAction = TextInputAction.next,
    this.formatter,
    this.hint,
  }) : super(key: key);

  final TextEditingController controller;
  final String? hint;
  final List<TextInputFormatter>? formatter;
  final TextInputAction? inputAction;

  final Validations? validationType;

  @override
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  bool _passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormFieldWidget(
      controller: widget.controller,
      hint: widget.hint ?? customStrings.enterPassword,
      isLabelFloating: false,
      hasBorder: true,
      obscure: _passwordVisible,
      validationType: widget.validationType!,
      inputAction: widget.inputAction!,
      formatter: widget.formatter,
      maxLines: 1,
      prefixIcon: Icon(
        Icons.lock_outline,
        color: customColors.hintColor,
      ),
      suffixIcon: IconButton(
        icon: Icon(
          _passwordVisible
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined,
          color: Colors.black.withOpacity(0.7),
        ),
        onPressed: () {
          setState(() {
            _passwordVisible = !_passwordVisible;
          });
        },
      ),
    );
  }
}
