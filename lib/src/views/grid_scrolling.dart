import 'package:flutter/material.dart';

class Scrolling extends StatelessWidget {
  const Scrolling({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 1,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'design/harry-potter.webp',
              ),
              fit: BoxFit.contain,
            ),
          ),
        );
      },
    );
  }
}
