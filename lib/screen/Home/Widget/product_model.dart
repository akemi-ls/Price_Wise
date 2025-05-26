<<<<<<< HEAD
=======
class ShopInfo {
  final String name;
  final String image;
  final double price;
  final double rating;

  ShopInfo({
    required this.name,
    required this.image,
    required this.price,
    required this.rating,
  });
}

>>>>>>> 79de6ee (Update repository with latest changes)
class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final double price;
  final String category;
  final double rate;
<<<<<<< HEAD

=======
  final List<ShopInfo> shops;
>>>>>>> 79de6ee (Update repository with latest changes)

  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.review,
    required this.price,
    required this.category,
    required this.rate,
<<<<<<< HEAD
  });
}

=======
    required this.shops,
  });
}

final List<ShopInfo> defaultShops = [
  ShopInfo(
    name: "Shopee",
    image: "https://upload.wikimedia.org/wikipedia/commons/1/1f/Shopee_logo.svg",
    price: 799,
    rating: 4.8,
  ),
  ShopInfo(
    name: "Lazada",
    image: "https://upload.wikimedia.org/wikipedia/commons/6/6e/Lazada_%282019%29.svg",
    price: 749,
    rating: 4.7,
  ),
  ShopInfo(
    name: "TikTok",
    image: "https://upload.wikimedia.org/wikipedia/commons/0/09/TikTok_logo.svg",
    price: 759,
    rating: 4.6,
  ),
];

>>>>>>> 79de6ee (Update repository with latest changes)


final List<Product> all = [
  Product(
    title: "Zeus Keyboard",
    description:
       "Lorem ipsum dolor sit amet, consectur adipiscing elit....",
    image: "images/keyboard.png",
    price: 100.0,
    category: "Gaming",
    review: "(10K Reviews)",
    rate: 4.8,
<<<<<<< HEAD
=======
    shops: defaultShops,
>>>>>>> 79de6ee (Update repository with latest changes)
  ),
  Product(
    title: "Watch",
    description:
       "Lorem ipsum dolor sit amet, consectur adipiscing elit....",
    image: "images/watch.png",
    price: 120.0,
    category: "Women's Apparel",
    review: "(10K Reviews)",
    rate: 4.8,
<<<<<<< HEAD
=======
    shops: defaultShops,
>>>>>>> 79de6ee (Update repository with latest changes)
  ),
  Product(
    title: "Windbreaker Jacket",
    description:
       "Lorem ipsum dolor sit amet, consectur adipiscing elit....",
    image: "images/windbreaker.png",
    price: 120.0,
    category: "Men's Apparel",
    review: "(10K Reviews)",
    rate: 4.8,
<<<<<<< HEAD
=======
    shops: defaultShops,
>>>>>>> 79de6ee (Update repository with latest changes)
  ),
  Product(
    title: "Poliflask",
    description:
       "Lorem ipsum dolor sit amet, consectur adipiscing elit....",
    image: "images/poliflask.png",
    price: 120.0,
    category: "School",
    review: "(10K Reviews)",
    rate: 4.8,
<<<<<<< HEAD
=======
    shops: defaultShops,
>>>>>>> 79de6ee (Update repository with latest changes)
  ),
  Product(
    title: "Bag",
    description:
       "Lorem ipsum dolor sit amet, consectur adipiscing elit....",
    image: "images/bag.png",
    price: 120.0,
    category: "School",
    review: "(10K Reviews)",
    rate: 4.8,
<<<<<<< HEAD
=======
    shops: defaultShops,
>>>>>>> 79de6ee (Update repository with latest changes)
  ),
  Product(
    title: "Dress",
    description:
       "Lorem ipsum dolor sit amet, consectur adipiscing elit....",
    image: "images/dress.png",
    price: 120.0,
    category: "Women's Apparel",
    review: "(10K Reviews)",
    rate: 4.8,
<<<<<<< HEAD
=======
    shops: defaultShops,
>>>>>>> 79de6ee (Update repository with latest changes)
  ), 
];




final List<Product> mensApparel = [
  Product(
    title: "Windbreaker Jacket",
    description:
       "Lorem ipsum dolor sit amet, consectur adipiscing elit....",
    image: "images/jacket.png",
    price: 120.0,
    category: "Men's Apparel",
    review: "(10K Reviews)",
    rate: 4.8,
<<<<<<< HEAD
=======
    shops: defaultShops,
>>>>>>> 79de6ee (Update repository with latest changes)
  ),
];

final List<Product> womensApparel = [
  Product(
    title: "Dress",
    description:
       "Lorem ipsum dolor sit amet, consectur adipiscing elit....",
    image: "images/jacket.png",
    price: 120.0,
    category: "Men's Apparel",
    review: "(10K Reviews)",
    rate: 4.8,
<<<<<<< HEAD
=======
    shops: defaultShops,
>>>>>>> 79de6ee (Update repository with latest changes)
  ),
];

final List<Product> school = [
  Product(
    title: "Bag",
    description:
       "Lorem ipsum dolor sit amet, consectur adipiscing elit....",
    image: "images/jacket.png",
    price: 120.0,
    category: "Men's Apparel",
    review: "(10K Reviews)",
    rate: 4.8,
<<<<<<< HEAD
=======
    shops: defaultShops,
>>>>>>> 79de6ee (Update repository with latest changes)
  ),
];

final List<Product> toys = [
  Product(
    title: "TeddyBear",
    description:
       "Lorem ipsum dolor sit amet, consectur adipiscing elit....",
    image: "images/jacket.png",
    price: 120.0,
    category: "Men's Apparel",
    review: "(10K Reviews)",
    rate: 4.8,
<<<<<<< HEAD
=======
    shops: defaultShops,
>>>>>>> 79de6ee (Update repository with latest changes)
  ),
];

final List<Product> gaming = [
  Product(
    title: "Zeus",
    description:
       "Lorem ipsum dolor sit amet, consectur adipiscing elit....",
    image: "images/jacket.png",
    price: 120.0,
    category: "Men's Apparel",
    review: "(10K Reviews)",
    rate: 4.8,
<<<<<<< HEAD
=======
    shops: defaultShops,
>>>>>>> 79de6ee (Update repository with latest changes)
  ),
];

final List<Product> electronics= [
  Product(
    title: "Power Bank",
    description:
       "Lorem ipsum dolor sit amet, consectur adipiscing elit....",
    image: "images/jacket.png",
    price: 120.0,
    category: "Men's Apparel",
    review: "(10K Reviews)",
    rate: 4.8,
<<<<<<< HEAD
=======
    shops: defaultShops,
>>>>>>> 79de6ee (Update repository with latest changes)
  ),
];

final List<Product> beauty = [
  Product(
    title: "Windbreaker Jacket",
    description:
       "Lorem ipsum dolor sit amet, consectur adipiscing elit....",
    image: "images/jacket.png",
    price: 120.0,
    category: "Men's Apparel",
    review: "(10K Reviews)",
    rate: 4.8,
<<<<<<< HEAD
=======
    shops: defaultShops,
>>>>>>> 79de6ee (Update repository with latest changes)
  ),
];

final List<Product> babies = [
  Product(
    title: "Baby Wipes",
    description:
       "Lorem ipsum dolor sit amet, consectur adipiscing elit....",
    image: "images/jacket.png",
    price: 120.0,
    category: "Men's Apparel",
    review: "(10K Reviews)",
    rate: 4.8,
<<<<<<< HEAD
=======
    shops: defaultShops,
>>>>>>> 79de6ee (Update repository with latest changes)
  ),
];
