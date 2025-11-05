import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:couldai_user_app/screens/splash_screen.dart';
import 'package:couldai_user_app/utils/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // **************************************************
  // TODO: REMPLACEZ PAR VOS PROPRES CLÉS SUPABASE
  // https://supabase.com/dashboard/project/_/settings/api
  // **************************************************
  await Supabase.initialize(
    url: 'YOUR_SUPABASE_URL', // Remplacez par votre URL
    anonKey: 'YOUR_SUPABASE_ANON_KEY', // Remplacez par votre clé Anon
  );
  runApp(const ZaxchateApp());
}

// Helper pour accéder au client Supabase
final supabase = Supabase.instance.client;

class ZaxchateApp extends StatelessWidget {
  const ZaxchateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zaxchate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: appPrimaryColor,
        scaffoldBackgroundColor: appScaffoldBackgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: appAppBarColor,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: appPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[800],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: appPrimaryColor),
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
