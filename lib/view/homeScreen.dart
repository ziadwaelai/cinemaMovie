import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../widgets/category.dart';
import '../widgets/movie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          width: double.infinity,
          height: 50,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(children: const [
              Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
              Spacer(),
              Icon(
                Icons.search,
                size: 30,
                color: Color.fromARGB(255, 185, 184, 184),
              ),
              Spacer(),
              Icon(
                Icons.tiktok,
                size: 30,
                color: Color.fromARGB(255, 185, 184, 184),
              ),
              Spacer(),
              Icon(
                Icons.person,
                size: 30,
                color: Color.fromARGB(255, 185, 184, 184),
              ),
            ]),
          )),
      backgroundColor: const Color.fromRGBO(32, 32, 42, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "welcome Angleine 👋",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Text(
                          "Let's relax and watch a movie !",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          "https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small_2x/man-with-beard-avatar-character-isolated-icon-free-vector.jpg"),
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 60,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Color.fromRGBO(40, 40, 50, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: const [
                      Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 173, 173, 173),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(
                            color: Color.fromARGB(255, 202, 202, 202)),
                      ),
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      "Category",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Text(
                      "See All >",
                      style: TextStyle(
                          color: Colors.orange[500],
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      category("😍", "Romamce"),
                      category("😁", "Comedy"),
                      category("😱", "Horror"),
                      category("😙", "Drama"),
                      category("😍", "Romamce"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Showing this month",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                CarouselSlider(
                    items: generateImages(context),
                    options: CarouselOptions(
                        enlargeCenterPage: true,
                        autoPlay: true,
                        height: 250,
                        disableCenter: true,
                        pauseAutoPlayOnTouch: true,
                        initialPage: 10,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        viewportFraction: 0.5,
                        pauseAutoPlayOnManualNavigate: true,
                        pageSnapping: true)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
