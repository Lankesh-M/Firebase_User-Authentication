import 'package:firebase/global/common/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Firbase basics")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome to Home Page"),
            const SizedBox(
              height: 10,
            ),
            //SignOut Button
            GestureDetector(
              onTap: () {
                FirebaseAuth.instance.signOut;
                showToast(message: "Successfully Signed Out");
                Navigator.pushNamed(context, '/Login');
              },
              child: Container(
                width: 120,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Center(
                  child: Text(
                    "Sign Out",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
