import 'package:flutter/material.dart';

import '../view/reservationScreen.dart';

Widget movie(String url, context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Resevation(url: url)));
    },
    child: Container(
        margin: const EdgeInsets.all(10),
        height: 250,
        width: 170,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Colors.transparent,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            url,
            height: 250.0,
            width: 170.0,
            fit: BoxFit.fill,
          ),
        )),
  );
}

Widget movie2(String url) {
  return Container(
      margin: const EdgeInsets.all(10),
      height: 350,
      width: 250,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        color: Colors.transparent,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          url,
          height: 250.0,
          width: 170.0,
          fit: BoxFit.fill,
        ),
      ));
}

final List<String> img = [
  "https://www.picclickimg.com/d/l400/pict/261999691626_/Disney-Princess-and-the-Frog-Stretched-Movie-Poster.jpg",
  "https://lumiere-a.akamaihd.net/v1/images/p_luca_21670_3c13c611.jpeg",
  "https://imgc.allpostersimages.com/img/posters/aladdin-carpet-ride_u-L-F9DGVG0.jpg"
];
List<Widget> generateImages(context) {
  return img.map((e) => movie(e, context)).toList();
}

Widget movieDetail(IconData i, String s1, String s2) {
  return Container(
    margin: const EdgeInsets.all(10),
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      border: Border.all(width: 1.0, color: Colors.white),
      borderRadius: const BorderRadius.all(Radius.circular(25)),
      color: Colors.transparent,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          i,
          color: Colors.white,
        ),
        Text(
          s1,
          style: const TextStyle(
              fontSize: 15, color: Color.fromARGB(255, 189, 189, 189)),
        ),
        Text(
          s2,
          style: const TextStyle(
              fontSize: 17, color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ],
    ),
  );
}
