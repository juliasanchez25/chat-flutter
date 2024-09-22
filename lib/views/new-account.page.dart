import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NewAccountPage extends StatelessWidget {
  NewAccountPage({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  create(BuildContext context) async {
   try {
      var auth = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);
      auth.user?.updateDisplayName(nameController.text);
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
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    hintText: "Name (Required)",
                    hintStyle: TextStyle(),
                    border: InputBorder.none
                  ),
                  controller: nameController,
                ),
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F7FC),
                  borderRadius: BorderRadius.circular(4),
                ),
                child:  TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "E-mail (Required)",
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
                child:  TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Password (Required)",
                    hintStyle: TextStyle(),
                    border: InputBorder.none
                  ),
                  controller: passwordController,
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
                      create(context);
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
