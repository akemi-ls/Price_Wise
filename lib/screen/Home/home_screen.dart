import 'package:flutter/material.dart';
import 'package:price_wise/screen/Home/Widget/cat.dart';
import 'package:price_wise/screen/Home/Widget/home_app_bar.dart';
import 'package:price_wise/screen/Home/Widget/image_slider.dart';
import 'package:price_wise/screen/Home/Widget/product_cart.dart';
import 'package:price_wise/screen/Home/Widget/product_model.dart';

<<<<<<< HEAD
class HomeScreen extends StatefulWidget {
=======

/*class HomeScreen extends StatefulWidget {
>>>>>>> 79de6ee (Update repository with latest changes)
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  int currentSlider = 0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List <List<Product>> selectCategories = [all,
      mensApparel,
      womensApparel,
      school,
      toys,
      gaming,
      electronics,
      beauty,
      babies,
    ];
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 35),
              //custom appbar
              const CustomAppBar(),
              const SizedBox(height: 20),
              //searchbar
              const SearchBar(),
              const SizedBox(height: 15),
              ImageSlider(
                currentSlide: currentSlider, 
                onChange: (value) { 
                  setState(() {
                    currentSlider = value;
                  },
                );
               },
              ),
              const SizedBox(height: 20),
              //for categories
              SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: selectedIndex == index 
                                ? Colors.grey[200]
                                : Colors.transparent,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    categoriesList[index].image,
                                  ), 
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ), 
                            const SizedBox(height: 5), 
                            Text(
                              categoriesList[index].title,
                              style: const TextStyle( 
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ); 
                  }, 
                ),
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                children: [ 
                Text("Special For You",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
               ),
                Text("See all",
                 style: TextStyle(
                   fontWeight: FontWeight.w500,
                   fontSize: 16,
                   color: Colors.black54,
                 ),
                ),
              ],
             ),
             //for shopping items
             GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.78,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: selectCategories[selectedIndex].length,
              itemBuilder: (context, index) {
                return ProductCard(
                  product: selectCategories[selectedIndex][index],
                );
              }
             )
            ], 
          ),
        ),
      ),
    );
  }
}
<<<<<<< HEAD
=======
*/


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  int currentSlider = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<List<Product>> selectCategories = [
      all,
      mensApparel,
      womensApparel,
      school,
      toys,
      gaming,
      electronics,
      beauty,
      babies,
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 35),
              // custom app bar
              const CustomAppBar(),
              const SizedBox(height: 20),
              // search bar
              const SearchBar(),
              const SizedBox(height: 15),
              ImageSlider(
                currentSlide: currentSlider,
                onChange: (value) {
                  setState(() {
                    currentSlider = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              // for categories
              SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: selectedIndex == index
                              ? Colors.grey[200]
                              : Colors.transparent,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    categoriesList[index].image,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              categoriesList[index].title,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special For You",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              // for shopping items
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.78,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: selectCategories[selectedIndex].length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    product: selectCategories[selectedIndex][index],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
>>>>>>> 79de6ee (Update repository with latest changes)

