import 'package:flutter/material.dart';
import 'HomePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 68, 31, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 48),
              const Text(
                'Iniciar Sesión',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 24),
              _buildInputField('Usuario'),
              const SizedBox(height: 16),
              _buildInputField('Contraseña', isPassword: true),
              const SizedBox(height: 32),
              _buildLoginButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(String label, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(25),
        child: const Center(
          child: Text(
            'Iniciar Sesión',
            style: TextStyle(
              color: Color.fromRGBO(255, 68, 31, 1),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
