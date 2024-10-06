import "package:flutter/material.dart";
import "package:guess_my_number/gradient_container.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          firstColor: Color.fromARGB(255, 255, 215, 0),
          secondColor: Color.fromARGB(255, 255, 236, 179),
        ),
      ),
    ),
  );
}
