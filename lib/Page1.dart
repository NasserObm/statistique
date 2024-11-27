// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:go_router/go_router.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final PageController _controller = PageController();

  List<String> liensImages = [
    "assets/stat1.png",
    "assets/stat2.jpg",
    "assets/stat3.png"
  ];

  List<String> titres = [
    "Use the best actually in the World",
    "Create Invoices Faster and Easier",
    "Now you can enter in the futur"
  ];

  List<String> descriptions = [
    "New tools for everybody, anywhere and anytimes just use it and your life will be easy and more cool",
    "simplify billing invoices. Throught an automated payment system, payment will be faster and easier.",
    "Come to show the future about billing invoices, we proud the best  in the world "
  ];
  Widget pagesOne(int i) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Image(
            image: AssetImage(liensImages[i]),
            width: double.infinity,
            height: 430,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          titres[i],
          style: const TextStyle(color: Color(0xffffffff), fontSize: 40),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          descriptions[i],
          style: const TextStyle(color: Color(0xffffffff), fontSize: 15),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff07313A),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Column(
          children: [
            Image.asset("assets/trads.jpg"),
            Expanded(
              child: PageView(
                controller: _controller,
                children: List.generate(
                  liensImages.length,
                  (index) => pagesOne(index),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: const ExpandingDotsEffect(
                        dotHeight: 7,
                        dotWidth: 12,
                        expansionFactor: 2,
                        activeDotColor: Color(0xff2CD196),
                        dotColor: Color(0xff0E504B),
                      ),
                      onDotClicked: (index) {
                        _controller.jumpToPage(index);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          context.go('/Page2');
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff2CD196),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
