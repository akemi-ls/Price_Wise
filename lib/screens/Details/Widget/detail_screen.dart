import 'package:flutter/material.dart';
import 'package:price_wise/constants.dart';
import 'package:price_wise/screens/Details/Widget/add_to_cart.dart';
import 'package:price_wise/screens/Details/Widget/d-image_slider.dart';
import 'package:price_wise/screens/Details/Widget/description.dart';
import 'package:price_wise/screens/Details/Widget/detail_app_bar.dart';
import 'package:price_wise/screens/Details/Widget/item_details.dart';
import 'package:price_wise/screens/Home/Widget/product_model.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;
  // int currentSlide = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      //for add to cart icon
      floatingActionButton: AddToCart(product: widget.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Column(
          
          children: [
            //for back button, share and favorite
            DetailAppBar(product: widget.product),
            //for detail image
            DImageSlider(
              image: widget.product.image, 
              onChange: (index) {
              setState(() {
                currentImage = index;
              });
            }
            ),
            const SizedBox(height: 10),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) => AnimatedContainer(
                  duration:const  Duration(microseconds: 300),
                  width: currentImage == index ? 15 : 8,
                  height: 8,
                  margin: EdgeInsets.only(right: 3),
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentImage == index 
                        ? Colors.black 
                        : Colors.transparent,
                        border: Border.all(color: Colors.black,
                      )
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              color: Colors.white, // ✅ Move color here
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
                bottom: 200,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //for product name, price and rating
                  ItemDetails(product: widget.product),
                  const SizedBox(height: 25),
                  //for description
                  Description(description: widget.product.description),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}