import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:goal_quest/quest_overlay.dart';

class QuestButton extends StatefulWidget {
  const QuestButton({super.key});

  @override
  State<QuestButton> createState() => _QuestButtonState();
}

class _QuestButtonState extends State<QuestButton> {
  List<String> quests = [];
  void _addHeroQuest(String quest) {
    setState(() {
      quests.add(quest);
    });
  }

  void _addQuestOverlay() {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (ctx) {
        return QuestOverlay(onQuestAdded: _addHeroQuest);
      },
    );
  }

  void _removeQuest(int index) {
    setState(() {
      quests.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 60.0),
          child: SizedBox(
            child: ElevatedButton(
              onPressed: _addQuestOverlay,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0))),
              child: const Text(
                "Add your quest",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        Expanded(
          child: quests.isNotEmpty
              ? ListView.builder(
                  itemCount: quests.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListTile(
                        onTap: () => _removeQuest(index),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        title: Text(
                          quests[index],
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  },
                )
              : const Center(
                  child: Text(
                    "No quests added yet!",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
