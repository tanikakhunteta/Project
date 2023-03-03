import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Car extends StatefulWidget {
  const Car({super.key});

  @override
  State<Car> createState() => _CarState();
}

class _CarState extends State<Car> {
  List text = [
    "Front End Development",
    "Business Development Executive",
    "WordPress",
    "UI UX Design",
    "Social Media Marketing",
    "Digital Marketing",
    "Graphic Design"
  ];

  List images = [
    "assets/images/Developer activity-pana.png",
    "assets/images/Development focus-pana.png",
    "assets/images/Interaction Design-pana.png",
    "assets/images/Mobile UX-pana.png",
    "assets/images/Social media-pana.png",
    "assets/images/Subscriptions-pana.png",
    "assets/images/Website Creator-pana.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Center(
          child: CarouselSlider(
              items: [
                for (int i = 0; i < images.length; i++) Image.asset(images[i]),
              ],
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 1,
              )),
        )
      ]
    ));
  }
}
