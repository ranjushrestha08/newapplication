import 'package:flutter/material.dart';
import 'package:newapplication/signinScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 820,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 246, 245, 243),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://wallpaperaccess.com/full/2041723.jpg"),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 470),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Stud",
                        style: TextStyle(
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "ee",
                        style: TextStyle(
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 3, 95, 171)),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Learn a lot of new skills with Studee",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const Text(
                  "by watching videos anytime",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          minimumSize: const Size(350, 50),
                          backgroundColor:
                              const Color.fromARGB(255, 248, 248, 249)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SignInScreen();
                        }));
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          minimumSize: const Size(350, 50),
                          backgroundColor:
                              const Color.fromARGB(255, 248, 248, 249)),
                      onPressed: () {},
                      child: const Text(
                        "Sign up",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
