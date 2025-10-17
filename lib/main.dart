import 'package:flutter/material.dart';
import 'package:mola_ferdian/screens/login_screen.dart';
import 'package:mola_ferdian/screens/signup_screen.dart';
import 'package:mola_ferdian/screens/dashboard_screen.dart';
import 'package:mola_ferdian/screens/profile_screen.dart';
import 'package:mola_ferdian/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Judul Aplikasi
      title: 'LOKATRIP',
      // Tema Utama Aplikasi
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF3F6F8), // abu-abu muda
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E88FF)),
        inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF1E88FF)),
          ),
        ),
      ),

      // Menentukan halaman awal aplikasi saat pertama kali dijalankan
      initialRoute: LoginScreen.route,
      routes: {
        LoginScreen.route: (context) => const LoginScreen(), // route halaman login
        SignupScreen.route: (context) => const SignupScreen(), // route halaman signup
        DashboardScreen.route: (context) => const DashboardScreen(), // route halaman dashboard
        ProfileScreen.route: (context) => const ProfileScreen(), // route halaman profile
        SplashScreen.route: (context) => const SplashScreen(), // route halaman splash screen
      },
    );
  }
}
