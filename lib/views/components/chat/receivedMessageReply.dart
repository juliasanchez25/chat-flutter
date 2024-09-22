import 'package:flutter/material.dart';

class ReceivedMessageReply extends StatelessWidget {
  const ReceivedMessageReply({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12, left: 16, right: 60),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFFEDEDED),
                borderRadius: BorderRadius.circular(4),
                border: const Border(
                  left: BorderSide(
                    color: Color(0xFF002DE3),
                    width: 4,
                  ),
                )
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("You", style: TextStyle(
                    color: Color(0xFF002DE3),
                    fontSize: 10,
                  ),),
                  SizedBox(height: 4),
                  Text("Can I come over?", style: TextStyle(
                    color: Color(0xFF0F1828),
                    fontSize: 14,
                  ),),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text("Of course, let me know if you're on your way", style: TextStyle(
              color: Color(0xFF0F1828),
              fontSize: 14,
            ),),
            const SizedBox(height: 4),
            const Text("16:46", style: TextStyle(
              color: Color(0xFFADB5BD),
              fontSize: 10,
            ),),
          ],
        )
      ),
    );
  }
}