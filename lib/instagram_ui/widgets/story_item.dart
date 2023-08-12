import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key, required this.title, required this.link
  });

  final String title, link;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black26),
              ),
              Container(
                height: 72,
                width: 72,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey,
                    border: Border.all(color: Colors.white, width: 2),
                    image: DecorationImage(
                        image: NetworkImage(link),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(title)
        ],
      ),
    );
  }
}