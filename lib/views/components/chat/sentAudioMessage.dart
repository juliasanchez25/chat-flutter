import 'package:flutter/material.dart';

class SentAudioMessage extends StatelessWidget {
  const SentAudioMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        // width: 160,
        margin: const EdgeInsets.only(bottom: 12, left: 60, right: 16),
        padding: const EdgeInsets.fromLTRB(4, 4, 10, 10),
        decoration: const BoxDecoration(
          color: Color(0xFF002DE3),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 6, 4),
              padding: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: const Color(0xFF375FFF),
                borderRadius: BorderRadius.circular(8)
              ),
              width: 150,
              child: Row(
                children: [
                  IconButton(
                    visualDensity: VisualDensity.compact,
                    icon: const Icon(
                      Icons.pause,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  const Expanded(
                    child: LinearProgressIndicator(
                      minHeight: 5,
                      value: 0.25,
                      color: Colors.red,
                      valueColor:  AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            const Text("09:45 - Read", style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 10,
            ))
          ],
        ),
      ),
    );
  }
}