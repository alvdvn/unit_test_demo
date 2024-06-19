import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:unit_test_demo/screen/homtab/contact.dart';
import 'package:unit_test_demo/screen/homtab/list.dart';
import 'package:unit_test_demo/screen/homtab/profile.dart';

import 'homtab/home.dart';

class DemoController extends GetxController{
  var tabIndex = 0.obs;
  List<Widget> screens= <Widget>[
      Home(),
      ListCard(),
      Contact(),
      Profile()
  ];
  List<String> appBarTitle = [
    'Home Screen Content',
    'Library Screen Content',
    'Contact Screen Content',
    'Profile Screen Content'
  ];

}