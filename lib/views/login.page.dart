import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFFF7F7FC),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "E-mail",
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
                  hintText: "Password",
                  hintStyle: TextStyle(),
                  border: InputBorder.none
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 68),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xFF002DE3)),
                  ),
                  onPressed: () {
                    // TODO: Add login functionality
                  },
                  child: const Text("Login",
                      style: TextStyle(color: Colors.white))),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/new-account');
                },
                child: const Text("Don't have an account? Create one.")),
          ],
        ),
      ),
    );
  }
}
