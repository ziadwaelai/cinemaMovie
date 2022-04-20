import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget category(String s, String s2) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        margin: const EdgeInsets.all(10),
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromARGB(255, 38, 38, 48),
        ),
        child: Center(
            child: Text(
          s,
          style: TextStyle(fontSize: 25),
        )),
      ),
      Text(
        s2,
        style: TextStyle(color: Color.fromARGB(255, 201, 201, 201)),
      )
    ],
  );
}
