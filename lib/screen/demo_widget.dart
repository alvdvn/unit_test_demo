import 'package:flutter/material.dart';
class DemoWidget extends StatefulWidget {
  const DemoWidget({super.key});

  @override
  State<DemoWidget> createState() => _DemoWidgetState();
}

class _DemoWidgetState extends State<DemoWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:  EdgeInsets
        .symmetric(horizontal: 20),
        child: Stack(
          children: [

          ],
        ),
      ),
    );
  }
}
