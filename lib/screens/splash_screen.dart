import 'package:flutter/material.dart';
import 'dart:async'; // Untuk menggunakan Future.delayed
import 'package:mola_ferdian/screens/dashboard_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String route = '/splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToDashboard();
  }

  // Fungsi navigasi ke Dashboard setelah delay 5 detik
  void _navigateToDashboard() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, DashboardScreen.route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8FB),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const LokatripLogo(),
            const SizedBox(height: 24),
            const CircularProgressIndicator(
              color: Color(0xFF1E88FF),
            ),
            const SizedBox(height: 16),
            Text(
              'Loading...',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget Logo untuk Splash Screen
class LokatripLogo extends StatelessWidget {
  const LokatripLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/airplane.png', // Pastikan path ini benar dan file ada di folder assets
      width: 240,
      height: 240,
      errorBuilder: (context, error, stackTrace) =>
          const FlutterLogo(size: 120),
    );
  }
}
