import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:unit_test_demo/screen/demo_widget.dart';
import 'package:unit_test_demo/screen/homtab/home.dart';
import 'package:unit_test_demo/screen/login/login_controller.dart';

class LoginWiget extends StatefulWidget {
  const LoginWiget({super.key});

  @override
  State<LoginWiget> createState() => _LoginWigetState();
}

class _LoginWigetState extends State<LoginWiget> {

  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  var isShowErrorText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo unit test login'),
      ),
      body: _bodyLogin(),
    );
  }

  Widget _bodyLogin() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        _mediumVerticalSpacer(),
        _headerText(),
        _mediumVerticalSpacer(),
        _emailAndPasswordFiels(),
        _loginButton(),
        _smallVerticalSpacer(),
        TextButton(onPressed: () {

        }, child: const Text('Forgot password',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            )))
      ],
    ),
  );

  Widget _mediumVerticalSpacer() => const SizedBox(height: 20);

  Widget _headerText() => const Text(
    'Unit test',
    style: TextStyle(
      color: Colors.amber,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  );

  Widget _emailAndPasswordFiels() => Column(
    children: [
      TextField(
        key: const Key('email'),
        controller: _emailTextController,
        decoration: InputDecoration(
          errorText: LoginController.emailValidate(_emailTextController.text),
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.all(8),
          hintText: 'Email',
          labelText: 'Email',
        ),
      ),
      _smallVerticalSpacer(),
      TextField(
        key: const Key('password'),
        controller: _passwordTextController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.all(8),
          hintText: 'Password',
          labelText: 'Password',
        ),
      ),
      _smallVerticalSpacer(),
    ],
  );

  Widget _smallVerticalSpacer() => const SizedBox(height: 10);


  Widget _loginButton() => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () {
               Get.to(DemoWidget());
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(isShowErrorText == true ? Colors.blue : Colors.white30)),
            child: const Text('Login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold))),
      );
}
