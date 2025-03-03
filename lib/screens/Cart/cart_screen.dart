import 'package:flutter/material.dart';
import 'package:price_wise/Provider/cart_provider.dart';
import 'package:price_wise/constants.dart';
import 'package:price_wise/screens/nav_bar_screen.dart';
import 'package:provider/provider.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    final finalList = provider.cart;
    return Scaffold(
      backgroundColor: kcontentColor,
      body: SafeArea(child: 
        Column(
          children: [
            Padding(padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  style: IconButton.styleFrom(
                  backgroundColor: Colors.white, 
                  padding: const EdgeInsets.all(15),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                     builder: (context) => const BottomNavBar(),
                    )
                  );
                },
                  icon: Icon(Icons.arrow_back),
                ),
                Text("My Cart",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Container()
              ],
            ),
           ),
           Expanded(child: ListView.builder(
            itemCount: finalList.length,
            itemBuilder: (context, index) {
              final cartItems = finalList[index];
              return Stack(
                children: [
                  Padding(padding: EdgeInsets.all(15),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                            color: kcontentColor,
                            borderRadius: BorderRadius.circular(20),
                         ),
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(cartItems.image),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cartItems.title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ), 
                            ),
                            SizedBox(height: 5),
                            Text(
                              cartItems.category,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey.shade400,
                              ), 
                            ),
                            SizedBox(height: 10),
                            Text(
                              "\$${cartItems.price}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey.shade400,
                              ), 
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  ),
                  Positioned(
                    top: 35,
                    right: 35,
                    child: Column(
                    children: [
                       IconButton(onPressed: (){
                        finalList.removeAt(index);
                        setState(() {
                          
                        });
                       },
                       icon: const Icon(Icons.delete,
                       color: Colors.red,
                       size: 22,
                       ),
                      ),
                    ],
                    ),
                  ),
                ],
              );
            },
            ),
           ),
          ],
        )
      ),
    );
  }
} 

