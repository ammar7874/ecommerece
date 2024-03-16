import 'package:ecommerece/views/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAR0LiQ_7QxD2JP83QjP7UWPOCKhI1sme8",
            authDomain: "ecommerece-7b9e4.firebaseapp.com",
            projectId: "ecommerece-7b9e4",
            storageBucket: "ecommerece-7b9e4.appspot.com",
            messagingSenderId: "1029181284612",
            appId: "1:1029181284612:web:d0acfb7c6069b142b47051"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
