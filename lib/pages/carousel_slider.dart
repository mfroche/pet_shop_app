import 'package:first_app/utils/colors.dart';
import 'package:flutter/material.dart';

class MyCarouselSlider extends StatefulWidget {
  const MyCarouselSlider({super.key});

  @override
  State<MyCarouselSlider> createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider> with TickerProviderStateMixin {
  List<String> assets = [
    'assets/images/onboarding-img-1.png',
    'assets/images/onboarding-img-1.png',
    'assets/images/onboarding-img-1.png',
  ];

  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            itemCount: assets.length,
            physics: ClampingScrollPhysics(),
            controller: PageController(initialPage: 0, viewportFraction: 1),
            onPageChanged: (value) {
              currentindex = value;
              setState(() {});
            },
            itemBuilder: (context, index) {
              return Container(
                child: Image.asset(
                  assets[index],
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
              );
            },
          ),
        ),
        TabPageSelector(
          controller: TabController(length: assets.length, initialIndex: currentindex, vsync: this),
          selectedColor: yellowColor,
          color: Colors.white,
          borderStyle: BorderStyle.solid,
          indicatorSize: 20,
        ),
      ]),
    );
  }
}
