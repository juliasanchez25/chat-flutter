import 'package:flutter/material.dart';

class ReceivedImageMessage extends StatelessWidget {
  const ReceivedImageMessage({
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
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              child: Image(
                image: NetworkImage('https://picsum.photos/200'),
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8),
            Text("Look at how chocho sleep in my arms!", style: TextStyle(
              color: Color(0xFF0F1828),
              fontSize: 14,
            ),),
            SizedBox(height: 4),
            Text("16:46", style: TextStyle(
              color: Color(0xFFADB5BD),
              fontSize: 10,
            ),),
          ],
        )
      ),
    );
  }
}