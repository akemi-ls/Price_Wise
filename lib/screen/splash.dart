import 'package:flutter/material.dart';
import 'package:price_wise/screen/Start/login_screen.dart';

class Splash extends StatefulWidget {
<<<<<<< HEAD
  const Splash({Key? key}) : super(key: key);  // Optional: Adds key support
=======
  const Splash({super.key});  // Optional: Adds key support
>>>>>>> 79de6ee (Update repository with latest changes)

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LogIn()),  // Optional: Add const for LogIn if it's const
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'PriceWise',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold, // Added font weight for emphasis
          ),
        ),
      ),
    );
  }
}
