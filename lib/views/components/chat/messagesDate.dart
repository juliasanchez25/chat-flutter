import 'package:flutter/material.dart';

class MessagesDate extends StatelessWidget {
  const MessagesDate({super.key});

  @override

  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: const EdgeInsets.all(16),
        child: const Text("Sat, 17/10", style: TextStyle(
          color: Color(0xFFADB5BD),
          fontSize: 12,
        )),
      ),
    );
  }
}