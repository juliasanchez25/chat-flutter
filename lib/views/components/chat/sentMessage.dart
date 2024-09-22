import 'package:flutter/material.dart';

class SentMessage extends StatelessWidget {
  const SentMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Color(0xFF002DE3),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("K, I'm on my way", style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 14,
            ),),
            SizedBox(height: 4),
            Text("16:50 - Read", style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 10,
            ),),
          ],
        )
      ),
    );
  }
}