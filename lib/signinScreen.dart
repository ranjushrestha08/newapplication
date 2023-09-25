import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Column(
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
                      padding: EdgeInsets.only(top: 230),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 470,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 44, 159, 248),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Hello,",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                              const Text(
                                "Welcome Back!",
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              TextFormField(
                                style: const TextStyle(),
                                decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25.0))),
                                    hintText: ("UserName or Phone Number")),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              TextFormField(
                                style: const TextStyle(),
                                decoration: const InputDecoration(
                                    filled: true,
                                    suffixIcon: Icon(Icons.remove_red_eye),
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25.0))),
                                    hintText: ("Password")),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10, left: 250),
                                child: Text(
                                  "Forget Password?",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 20),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        minimumSize: const Size(340, 60),
                                        backgroundColor: const Color.fromARGB(
                                            255, 4, 4, 65)),
                                    onPressed: () {},
                                    child: const Text(
                                      "Sign in",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 251, 249, 249),
                                          fontSize: 16),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
