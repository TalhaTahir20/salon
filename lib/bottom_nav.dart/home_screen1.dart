import 'package:flutter/material.dart';

import '../components/homescreen_bg_image.dart';
import '../components/top_categories.dart';
import '../components/toprated.dart';
import '../reusable/reusable_text.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            HomeScreenBGImage(),
            SizedBox(
              height: 10,
            ),
            SizedBox(height: 10),
            ReusableText(text1: 'Top Rated', text2: 'See all'),
            SizedBox(height: 10),
            TopRated(),
            SizedBox(height: 10),
            ReusableText(text1: 'Top Categories', text2: 'See all'),
            SizedBox(height: 20),
            TopCategories(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}