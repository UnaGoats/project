import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.yellowAccent,
          image: DecorationImage(
              image: NetworkImage(
            "https://picsum.photos/250?image=37",
          )),
        ),
        padding: EdgeInsets.all(90),
      ),
    ),
  );
}