import "package:flutter/material.dart";
import "package:goal_quest/gradient_container.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          firstColor: Colors.indigo[600] ?? Colors.indigo,
          secondColor: Colors.indigo[200] ?? Colors.indigoAccent,
        ),
      ),
    ),
  );
}
