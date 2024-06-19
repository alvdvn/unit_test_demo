

import 'package:get/instance_manager.dart';
import 'package:unit_test_demo/screen/demo_controller.dart';
import 'package:unit_test_demo/screen/login/login_controller.dart';

Future<void> configutionDepentences() async{
  Get.put(DemoController());
  Get.put(LoginController());
}