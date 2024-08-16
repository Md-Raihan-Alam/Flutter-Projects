import "package:flutter/material.dart";
import "package:goal_quest/quest_button.dart";

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {required this.firstColor, required this.secondColor, super.key});
  final Color firstColor;
  final Color secondColor;
  @override
  Widget build(context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          firstColor,
          secondColor,
        ],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      )),
      child: const QuestButton(),
    );
  }
}
