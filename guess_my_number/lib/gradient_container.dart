import "package:flutter/material.dart";

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
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 5.0)),
            child: const Text(
              "Guess my number",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: double.infinity, height: 50.0),
          Container(
            padding: const EdgeInsets.all(10.0),
            width: 350.0,
            height: 300.0,
            color: Colors.brown[900],
            child: Column(
              children: [
                Text(
                  "Enter a number",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.amber[900],
                  ),
                ),
                const SizedBox(width: double.infinity, height: 20.0),
                const SizedBox(
                  width: 80.0,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.yellow,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.yellow,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: double.infinity, height: 100.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 160.0,
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.deepPurple[400],
                        ),
                        child: const Text(
                          "Reset",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.deepPurple[400],
                        ),
                        child: const Text(
                          "Confirm",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
