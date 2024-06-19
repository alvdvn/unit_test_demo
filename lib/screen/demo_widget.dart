import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:unit_test_demo/screen/demo_controller.dart';

class DemoWidget extends StatefulWidget {
  const DemoWidget({super.key});

  @override
  State<DemoWidget> createState() => _DemoWidgetState();
}

class _DemoWidgetState extends State<DemoWidget> {
  DemoController demoController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(
          demoController.appBarTitle[demoController.tabIndex.value],
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            Obx(() => demoController.screens[demoController.tabIndex.value]),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      Expanded(
                          child: GestureDetector(
                        onTap: () {
                          demoController.tabIndex.value = 0;
                        },
                        child: Center(
                          child: Icon(Icons.home),
                        ),
                      )),
                      Expanded(
                          child: GestureDetector(
                        onTap: () {
                          demoController.tabIndex.value = 1;
                        },
                        child: Container(
                          child: Center(
                            child: Icon(Icons.library_books_rounded),
                          ),
                        ),
                      )),
                      Expanded(
                          child: GestureDetector(
                        onTap: () {
                          demoController.tabIndex.value = 2;
                        },
                        child: Container(
                          child: Center(
                            child: Icon(Icons.contact_mail_outlined),
                          ),
                        ),
                      )),
                      Expanded(
                          child: GestureDetector(
                        onTap: () {
                          demoController.tabIndex.value = 3 ;
                        },
                        child: Container(
                          child: Center(
                            child: Icon(Icons.person),
                          ),
                        ),
                      ))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
