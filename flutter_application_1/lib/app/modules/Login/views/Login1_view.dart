import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/Beranda/views/beranda_view.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: SingleChildScrollView( // Untuk scroll ke bawah
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 30),
              Image.asset(
                '../../../../assets/images/logo.png',
                height: 100,
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Input email',
                ),
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Beranda()),
                            );
                },
                child: const Text("LOGIN"),
              ),
              const SizedBox(height: 20),
              const Text(
                'or Login with:',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      // login with Facebook action
                    },
                    icon: const Icon(Icons.facebook, color: Colors.blue),
                  ),
                  IconButton(
                    onPressed: () {
                      // login with Google action
                    },
                    icon: const Icon(Icons.g_mobiledata, color: Colors.red),
                  ),
                  IconButton(
                    onPressed: () {
                      // login with Apple action
                    },
                    icon: const Icon(Icons.apple, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      // Navigasi ke halaman pendaftaran
                    },
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}