import 'package:flutter/material.dart';
import 'package:task/widgets/movie.dart';

class Resevation extends StatelessWidget {
  final String url;

  const Resevation({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Container(
            width: 200,
            height: 50,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Color.fromARGB(255, 249, 181, 33),
            ),
            child: const Center(
                child: Text(
              "Get Resevation",
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            ))),
      ),
      backgroundColor: const Color.fromRGBO(32, 32, 42, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(32, 32, 42, 1),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Movie Detail",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              movie2(url),
              const Spacer(),
              Column(
                children: [
                  movieDetail(Icons.movie, "Genre", "Comedy"),
                  movieDetail(Icons.lock_clock, "Duration", "1h 20m"),
                  movieDetail(Icons.star_border_purple500, "Rating", "8.7/10"),
                ],
              ),
            ],
          ),
          Text(
            " Luca",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 1,
              width: double.infinity,
              color: Color.fromARGB(255, 160, 160, 160),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Synopsis",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca lucaluca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca luca ",
            style: TextStyle(
              color: Color.fromARGB(255, 144, 144, 144),
              fontSize: 17,
            ),
          ),
        ]),
      ),
    );
  }
}
