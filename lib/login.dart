import 'package:flutter/material.dart';
import 'registration.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String savedEmail = "";
  String savedPassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 25),
            ),

            SizedBox(height: 20),

            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 15),

            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {

                if (emailController.text.trim() == savedEmail &&
                    passwordController.text == savedPassword &&
                    savedEmail.isNotEmpty) {

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Login Successful!"),
                    ),
                  );

                } else {

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Invalid Email or Password"),
                    ),
                  );
                }
              },

              child: Text("Login"),
            ),

            TextButton(
              onPressed: () async {

                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrationPage(),
                  ),
                );

                if (result != null) {
                  setState(() {
                    savedEmail = result[0];
                    savedPassword = result[1];
                  });
                }
              },

              child: Text("Create New Account"),
            ),
          ],
        ),
      ),
    );
  }
}