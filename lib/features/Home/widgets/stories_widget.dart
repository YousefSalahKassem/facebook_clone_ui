import 'package:flutter/material.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> storyImages = [
      'assets/story1.jpg',
      'assets/story2.jpg',
      'assets/story3.jpg',
      'assets/story4.jpg',
      'assets/story5.jpg',
      'assets/story6.jpg',
      'assets/story7.jpg',
      'assets/story8.jpg',
    ];

    return Container(
      height: 220,
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: storyImages.length,
        itemBuilder: (context, index) {
          return Container(
            height: 120,
            width: 120,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(storyImages[index]),
                  fit: BoxFit.cover,
                )),
          );
        },
      ),
    );
  }
}
