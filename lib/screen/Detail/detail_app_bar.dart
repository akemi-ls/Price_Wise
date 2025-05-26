import 'package:flutter/material.dart';
import 'package:price_wise/Provider/favorite_provider.dart';
import 'package:price_wise/screen/Home/Widget/product_model.dart';

class DetailAppBar extends StatelessWidget {
  final Product product;
  const DetailAppBar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: 
       Row(
        children: [
          IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.white, 
            padding: const EdgeInsets.all(15),
          ),
          onPressed: (){
            Navigator.pop(context);
          },
<<<<<<< HEAD
          icon: Icon(Icons.share_outlined),
=======
          icon: Icon(Icons.arrow_back_ios_rounded),
>>>>>>> 79de6ee (Update repository with latest changes)
          ),
          const Spacer(),
          IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.white, 
            padding: const EdgeInsets.all(15),
          ),
          onPressed: (){},
          icon: Icon(Icons.share),
          ),
          const SizedBox(width: 10),
          IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.white, 
            padding: const EdgeInsets.all(15),
          ),
          onPressed: (){
            provider.toggleFavorite(product);
          },
          icon: Icon(
            provider.isExist(product)?
            Icons.favorite: 
            Icons.favorite_border,
            color: Colors.black,
            size: 25,
            ),
          ),
        ],
      ),
    );
  }
}

