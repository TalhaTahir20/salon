import 'package:flutter/material.dart';
import 'package:salon_testing/components/topratedcomponents/toprated_screen.dart';

import '../models/item2.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 260,
        width: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: bottomcontainers.length,
          itemBuilder: (context, index) {
            BottomContainer bottomcontainer = bottomcontainers[index];
            return Container(
              margin: const EdgeInsets.all(10),
              height: 260,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
              ),
              child: Stack(
                children: [
                  
                  Hero(
                    tag: bottomcontainer.imageUrl,
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                          image: AssetImage(bottomcontainer.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => TopRatedScreen(
                                  bottomcontainer: bottomcontainer),
                            ),
                          );
                        },
                        child: const Center(
                          child: Text(
                            'View',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 68,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          bottomcontainer.rating,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 80,
                    left: 15,
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            bottomcontainer.brandName,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Text(
                            bottomcontainer.brandName2,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 4,
                    left: 15,
                    child: Row(
                      children: [
                        Text(
                          bottomcontainer.address,
                          style: const TextStyle(fontSize: 15),
                        ),
                        const Icon(Icons.directions),
                      ],
                    ),
                  ),
                  
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
