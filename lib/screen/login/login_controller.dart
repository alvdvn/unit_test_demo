import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController {

  static String emailValidate(String value) {
    String message = '';
    if (value.trim().isEmpty) message = 'Please enter email';
    /// search for email validate in func
    RegExp emailPattern = RegExp(r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
    r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
    r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
    r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
    r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
    r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
    r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])');
    if (value.trim().isNotEmpty && !emailPattern.hasMatch(value)) {
      message = 'Please enter valid email';
    }
    if (emailPattern.hasMatch(value)) {
      message = 'Email is valid';
    }
    return message;
  }

  static String passwordValidate(String value) {
    String message = '';
    if (value.trim().isEmpty) message = 'Please enter password';
    if (value.trim().isNotEmpty && value.length < 8) {
      message = 'Password must be more than 7 character';
    }
    if (value.trim().isNotEmpty && value.length > 7) {
      message = 'Password is valid';
    }
    return message;
  }

  String? passwordEmpty(String value) {
    if (value.isEmpty) {
      return 'Vui lòng điền mật khẩu';
    } else {
      return null;
    }
  }
}