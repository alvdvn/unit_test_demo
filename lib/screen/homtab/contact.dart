import 'package:flutter/material.dart';
class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ConttactState();
}

class _ConttactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Text(
        "Contact"
      ),
    );
  }
}
