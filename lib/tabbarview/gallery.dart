import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: GridView.count(
        scrollDirection: Axis.vertical,
        addRepaintBoundaries: true,
        crossAxisSpacing: 2,
        crossAxisCount: 3,
        children: const [
          Image(
            image: AssetImage('assets/haircut.jpg'),
          ),
          Image(
            image: AssetImage('assets/haircut1.jpg'),
          ),
          Image(
            image: AssetImage('assets/women-hair-style.jpg'),
          ),
          Image(
            image: AssetImage('assets/haircut.jpg'),
          ),
          Image(
            image: AssetImage('assets/haircut.jpg'),
          ),
          Image(
            image: AssetImage('assets/haircut1.jpg'),
          ),
          Image(
            image: AssetImage('assets/women-hair-style.jpg'),
          ),
          Image(
            image: AssetImage('assets/haircut.jpg'),
          ),
          Image(
            image: AssetImage('assets/haircut.jpg'),
          ),
          Image(
            image: AssetImage('assets/haircut1.jpg'),
          ),
          Image(
            image: AssetImage('assets/women-hair-style.jpg'),
          ),
          Image(
            image: AssetImage('assets/haircut.jpg'),
          ),
        ],
      ),
    );
  }
}
