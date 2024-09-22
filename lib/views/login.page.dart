import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  login(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text);
      Navigator.pushReplacementNamed(context, '/chats');
    }
    on FirebaseAuthException catch (ex) {
      var snackBar = SnackBar(
        content: Text(ex.message ?? 'Erro inesperado.'),
        backgroundColor: Colors.red,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

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
              child:  TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: "E-mail",
                  hintStyle: TextStyle(),
                  border: InputBorder.none
                ),
                controller: emailController,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFFF7F7FC),
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(),
                  border: InputBorder.none
                ),
                controller: passwordController,
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
                    login(context);
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
