import 'package:flutter/material.dart';
import 'package:price_wise/Provider/cart_provider.dart';
import 'package:price_wise/Provider/favorite_provider.dart';
import 'package:price_wise/constants.dart';
import 'package:price_wise/screens/Profile/login.dart';
//import 'package:price_wise/screens/nav_bar_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const PriceWise());
}

class PriceWise extends StatelessWidget {
  const PriceWise({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CartProvider()),
      ChangeNotifierProvider(create: (_) => FavoriteProvider()),
    ],
    child: MaterialApp (
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Typography.material2021().black,
        primaryColor: kprimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home:Login(),
    ),
  );
}
