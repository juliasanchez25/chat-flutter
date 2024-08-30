import 'package:flutter/material.dart';

class NewAccountPage extends StatelessWidget {
  const NewAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Account"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 32),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F7FC),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Stack(
                  children: [
                    Center(child: Icon(Icons.person_outline, size: 56)),
                    Positioned(
                      bottom: 0,
                      right: 1,
                      child: Icon(Icons.add_circle, size: 24)
                    )
                  ],
                )
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F7FC),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "Name (Required)",
                    hintStyle: TextStyle(),
                    border: InputBorder.none
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F7FC),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "E-mail (Required)",
                    hintStyle: TextStyle(),
                    border: InputBorder.none
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F7FC),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password (Required)",
                    hintStyle: TextStyle(),
                    border: InputBorder.none
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color(0xFF002DE3)),
                    ),
                    onPressed: () {
                      // TODO: Add login functionality
                    },
                    child: const Text("Save",
                        style: TextStyle(color: Colors.white))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
