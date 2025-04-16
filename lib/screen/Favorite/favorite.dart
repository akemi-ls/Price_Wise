import 'package:flutter/material.dart';
import 'package:price_wise/Provider/favorite_provider.dart';
import 'package:price_wise/constants.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final finalList = provider.favorite;
    return Scaffold(
      backgroundColor: kcontentColor,
      appBar: AppBar(
        backgroundColor: kcontentColor,
        title: Text(
          "Favorite",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
            itemCount: finalList.length,
            itemBuilder: (context, index) {
              final favoriteItems = finalList[index];
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
                          height: 85,
                          width: 85,
                          decoration: BoxDecoration(
                            color: kcontentColor,
                            borderRadius: BorderRadius.circular(20),
                         ),
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(favoriteItems.image),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              favoriteItems.title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ), 
                            ),
                            const SizedBox(height: 5),
                            Text(
                              favoriteItems.category,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey.shade400,
                              ), 
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "\$${favoriteItems.price}",
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
                    top: 40,
                    right: 35,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
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
      ),
    );
  }
}