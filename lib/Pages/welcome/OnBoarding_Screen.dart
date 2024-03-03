import 'package:chatapp/Pages/registration_page/registration_page.dart';
import 'package:chatapp/Pages/singIn_page.dart/SignIn_Page.dart';
import 'package:flutter/material.dart';

class OnBoardingScrren extends StatelessWidget {
  const OnBoardingScrren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 2, 24, 42),
              Color.fromARGB(255, 58, 57, 163),
              Color.fromARGB(255, 2, 24, 42),
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: const Text(
                "Connect Friends easily & quickly",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 70,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Our chat app is perfect way to stay connected with frinds and family",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 30, left: 40, right: 40, bottom: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "-------  or  -------",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/registerPage");
              },
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Text(
                    "SignUp with Email",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Existing Account?",
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/signInPage");
                  },
                  child: const Text(
                    "Login In",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
