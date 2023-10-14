import 'package:flutter/material.dart';
import 'package:rappi_app/pages/Login.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

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
              Padding(
                padding: const EdgeInsets.only(
                  top: 120.0,
                  left: 30.0,
                  right: 30.0,
                ),
                child: Image.asset(
                  'lib/images/logo_rappi.png',
                  height: 80,
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              const Text(
                '• corremos por ti •',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Toda tu ciudad en minutos',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 48,
              ),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      'Iniciar sesión',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 68, 31, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
