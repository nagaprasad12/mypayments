

import 'package:mypayments/constants/strings.dart';
import 'package:mypayments/enums/validations.dart';

/// [Validation] final variable
final Validation = ValidationExt();

/// [ValidationExt] class to apply validations for the form fields
class ValidationExt extends Strings {
  /// [isValidEmail] method
  /// [value] is the email to validate
  /// [validationType] is the type of validation
  dynamic validateTextFormField(String value, Validations validationType) {
    switch (validationType) {

      case Validations.email:
        return emailFieldValidation(value);
      case Validations.requiredFieldValidator:
        return requiredFieldValidation(value);
      case Validations.mobile:
        return mobileNumberValidation(value);
      default:
        return null;
    }
  }

  /// [emailFieldValidation] method to validate the email
  /// [value] is the email to validate
  String? emailFieldValidation(value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);

    if (requiredFieldValidation(value.toString().trim()) == null) {
      if (regex.hasMatch(value.toString().trim())) {
        return null;
      } else {
        return emailFieldErrorMessage;
      }
    } else {
      return requiredFieldErrorMessage;
    }
  }

  /// [mobileNumberValidation] method to validate the mobile number
  /// [value] is the mobileNumber to validate
  String? mobileNumberValidation(value) {
    // String pattern = r'(^(?:[+0]9)?[6-9]{1}[0-9]{9,11}$)';
    String pattern = r'(^(?:[+0]9)?[0-9]{10,14}$)';
    RegExp regex = RegExp(pattern);
    if (value.toString().trim().isEmpty ||
        !regex.hasMatch(value.toString().trim())) {
      return mobileFieldErrorMessage;
    } else {
      return null;
    }
  }

  /// [requiredFieldValidation] method to validate the required field
  /// [value] is the field to validate
  String? requiredFieldValidation(value) {
    if (value.toString().trim().isEmpty) {
      return requiredFieldErrorMessage;
    } else {
      return null;
    }
  }





  String? alphaNumericValidation(value) {
    String pattern = '^[a-zA-Z0-9]+\$';
    RegExp regex = RegExp(pattern);
    if (value.toString().trim().isEmpty ||
        !regex.hasMatch(value.toString().trim())) {
      return alphanumericFieldErrorMessage;
    } else {
      return null;
    }
  }



  String? numericValidation(value) {
    String pattern = '^[0-9]+\$';
    RegExp regex = RegExp(pattern);
    if (value.toString().trim().isEmpty ||
        !regex.hasMatch(value.toString().trim())) {
      return numericFieldErrorMessage;
    } else {
      return null;
    }
  }
}
