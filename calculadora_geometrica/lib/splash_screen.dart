import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigateToLogin(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(
        context,
        FirebaseAuth.instance.currentUser != null ? '/home' : '/signin',
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sistema de Figuras Geométricas',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(height: 20),
              Image.asset('assets/cps-55-anos.png', height: 60),
              const SizedBox(height: 20),
              Image.asset('assets/fatec-matao.jpg', height: 60),
              const SizedBox(height: 20),
              Image.asset('assets/cst-dsm.png', height: 60),
              const SizedBox(height: 30),
              const CircularProgressIndicator(),
              const SizedBox(height: 20),
              const Text('Desenvolvedores:'),
              const Text('Gabriel Fecchio Paravani Larocca'),
              const Text('Sophia Tavares'),
              const SizedBox(height: 10),
              const Text('Versão 1.0'),
            ],
          ),
        ),
      ),
    );
  }
}
