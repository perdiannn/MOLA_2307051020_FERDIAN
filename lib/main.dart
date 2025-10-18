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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Judul Aplikasi
      title: 'LOKATRIP',
      // Tema Utama Aplikasi
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF3F6F8), // warna latar belakang
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E88FF)), // warna dasar aplikasi
        inputDecorationTheme: InputDecorationTheme(
          isDense: true, // form input jadi rapat
          filled: true,
          fillColor: Colors.white, // warna latar belakang field input
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12), // sudut melengkung
            borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFE0E0E0)), // warna border saat tidak fokus
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF1E88FF)), // warna border saat fokus
          ),
        ),
      ),

      // Menentukan halaman awal aplikasi saat pertama kali dijalankan
      initialRoute: LoginScreen.route,

      // daftar route (navigasi antar halaman)
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
