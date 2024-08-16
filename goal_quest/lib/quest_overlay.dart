import 'package:flutter/material.dart';

class QuestOverlay extends StatefulWidget {
  final Function(String) onQuestAdded;
  const QuestOverlay({super.key, required this.onQuestAdded});

  @override
  State<QuestOverlay> createState() => _QuestOverlayState();
}

class _QuestOverlayState extends State<QuestOverlay> {
  final _questText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/goal.png",
                width: 200,
              ),
              TextField(
                controller: _questText,
                maxLength: 100,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  label: Text("Add your quest, hero!"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      if (_questText.text.isNotEmpty) {
                        widget.onQuestAdded(_questText.text);
                        Navigator.pop(context);
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 12.0),
                      textStyle: const TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      "Add",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white, width: 2.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 12.0),
                      textStyle: const TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      "Cancel",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
