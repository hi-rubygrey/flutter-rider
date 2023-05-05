import "package:flutter/material.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        backgroundColor: Colors.yellow,
        textStyle: const TextStyle(fontSize: 20, color: Colors.white),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            const SizedBox(
              height: 45.0,
            ),
            const Image(
              image: AssetImage("images/logo.png"),
              width: 390.0,
              height: 250.0,
              alignment: Alignment.center,
            ),
            const SizedBox(
              height: 1.0,
            ),
            const Text(
              "Login as a Rider",
              style: TextStyle(fontSize: 24.0, fontFamily: "Brand Bold"),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 1.0,
                  ),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(fontSize: 14.0),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        )),
                  ),
                  const SizedBox(
                    height: 1.0,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(fontSize: 14.0),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        )),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      print("Login Button Clicked");
                    },
                    child: const SizedBox(
                        height: 50.0,
                        child: Center(
                            child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 18.0, fontFamily: "Brand Bold"),
                        ))),
                  ),
                  const TextButton(
                    onPressed: null,
                    child: Text('Do not have an account? Register here.'),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
