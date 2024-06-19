
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test_demo/screen/login/login_controller.dart';

void main() {
  test('empty email test' , () {
    String result = LoginController.emailValidate('');
    expect(result, 'Please enter email');
  });
  
  test('valid email test', () {
    String result = LoginController.emailValidate('ios1@gmail.com');
    expect(result, 'Email is valid');
  });

  test('empty password test', () {
    String result = LoginController.passwordValidate('abcd');
    expect(result, 'Please enter password');
  });

  test('valid password test', () {
    String result = LoginController.passwordValidate('abcdabcdedasda');
    expect(result, 'Password is valid');
  });
}