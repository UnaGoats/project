import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
            "https://picsum.photos/250?image=37",
          )),
          shape: BoxShape.circle,
          color: Colors.yellowAccent,
        ),
        padding: EdgeInsets.all(90),
      ),
    ),
  );
}