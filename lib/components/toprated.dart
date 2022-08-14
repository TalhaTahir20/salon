import 'package:flutter/material.dart';
import 'package:salon_testing/models/item1.dart';

class TopRated extends StatelessWidget {
  const TopRated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 190,
        width: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemones.length,
          itemBuilder: (context, index) {
            ItemOne itemone = itemones[index];
            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 130,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(itemone.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(itemone.brandName),
                const SizedBox(
                  height: 5,
                ),
                Text(itemone.rating),
              ],
            );
          },
        ),
      ),
    );
  }
}
