import 'package:flutter/material.dart';
import 'package:price_wise/Provider/cart_provider.dart';
import 'package:price_wise/constants.dart';
import 'package:price_wise/screen/Home/Widget/product_model.dart';
import 'package:provider/provider.dart';

class AddToCart extends StatelessWidget {
  final Product product;
  const AddToCart({super.key, required this.product});


  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(
      context, listen: false);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15,),
      child: Container(
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
         padding: const EdgeInsets.symmetric(horizontal: 15), 
         alignment: Alignment.center,
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,
                width: 2,
                ),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {}, 
                    iconSize: 20,
                    icon: const Icon(Icons.message_rounded),
                    color: Colors.blueGrey,
                  ),
                  const SizedBox(width: 5),
                  IconButton(
                    onPressed: () {}, 
                    iconSize: 20,
                    icon: const Icon(Icons.message_rounded),
                    color: Colors.blueGrey,
                  ),
                ],
              ),
            ),
            GestureDetector(
             onTap: () {
               provider.toggleFavorite(product);
               const snackBar = SnackBar(
                content: Text("Successfully Added",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,
                 ),
                ),
                duration: Duration(seconds: 1),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
             },
             child: Container(
              height: 55,
              color: kprimaryColor,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: const Text(
                "Add to Cart",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
             ), 
            )
          ],
         ),
      ),
    );
  }
}
