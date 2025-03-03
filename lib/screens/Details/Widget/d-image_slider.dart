import 'package:flutter/material.dart';

class DImageSlider extends StatelessWidget {
  final Function (int) onChange;
  final String image;
  const DImageSlider({super.key, required this.image, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        itemCount: image.length,
        onPageChanged: onChange,
        itemBuilder: (context, index) {
          return Hero(
            tag: image[index],
            child: Image.asset(image[index])
          );
        },
      ),
    );
  }
} 