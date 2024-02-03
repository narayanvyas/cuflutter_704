import 'package:flutter/material.dart';

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

bool validateForm() {
  if (!RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(emailController.text)) {
    print('Email is invalid');
    return false;
  } else if (passwordController.text.length < 4) {
    print('Password is too short');
    return false;
  } else {
    return true;
  }
}

void performLogin() {
  if (validateForm()) {
    print('Login Success');
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          children: [
            Icon(
              Icons.login_outlined,
              size: 80,
              color: Colors.red,
            ),
            Container(
              height: 30,
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: 'Email', border: OutlineInputBorder()),
            ),
            Container(
              height: 30,
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: 'Password', border: OutlineInputBorder()),
            ),
            Container(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  performLogin();
                },
                child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
