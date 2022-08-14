import 'package:flutter/material.dart';
import 'package:salon_testing/models/item2.dart';
import 'package:salon_testing/tabbarview/about_us.dart';
import 'package:salon_testing/tabbarview/gallery.dart';
import 'package:salon_testing/tabbarview/reviews.dart';
import 'package:salon_testing/tabbarview/services.dart';

class TopRatedScreen extends StatefulWidget {
  final BottomContainer bottomcontainer;

  const TopRatedScreen({
    Key? key,
    required this.bottomcontainer,
  }) : super(key: key);

  @override
  State<TopRatedScreen> createState() => _TopRatedScreenState();
}

class _TopRatedScreenState extends State<TopRatedScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Hero(
                      tag: widget.bottomcontainer.imageUrl,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        child: Image(
                          image: AssetImage(widget.bottomcontainer.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 35,
                          ),
                          Icon(
                            Icons.shop,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: 20,
                    child: Row(
                      children: [
                        Text(
                          widget.bottomcontainer.brandName,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        Text(
                          widget.bottomcontainer.brandName2,
                          style: const TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold,
                              fontSize: 40),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    right: 20,
                    bottom: 20,
                    child: Icon(
                      Icons.directions,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const TabBar(
                tabs: [
                  Tab(
                    child: Icon(
                      Icons.info,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    child: Icon(
                      Icons.book,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    child: Icon(
                      Icons.picture_in_picture,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    child: Icon(
                      Icons.rate_review_rounded,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    AboutUs(),
                    Services(),
                    Gallery(),
                    Reviews(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
