// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff07313A),
        body: PageView(
          controller: _controller,
          children: [
            Container(
                color: Colors.red, child: const Center(child: Text("Page 1"))),
            Container(
                color: Colors.green,
                child: const Center(child: Text("Page 2"))),
            Container(
                color: Colors.blue, child: const Center(child: Text("Page 3"))),
          ],
        ));
  }
}
