import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/auth_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
          child: Column(
        children: [
          SizedBox(
            height: 250,
          ),
          _loginForm()
        ],
      )),
    );
  }

  Widget _loginForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: _usernameController,
          decoration: const InputDecoration(
              icon: Icon(Icons.mail), labelText: 'Type your username.'),
        ),
        TextField(
          controller: _passwordController,
          decoration: const InputDecoration(
              icon: Icon(Icons.lock_open), labelText: 'Type your password.'),
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
        ),
        ElevatedButton(onPressed: _login, child: const Text('Login'))
      ],
    );
  }

  void _login() {
    final username = _usernameController.text.trim();
    final password = _passwordController.text.trim();

    print('username: $username');
    print('password: $password');
  }
}
