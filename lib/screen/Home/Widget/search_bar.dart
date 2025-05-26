import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:price_wise/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( 
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kcontentColor,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25, 
        vertical: 5
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: Colors.grey,
            size: 30
          ),
          SizedBox(width: 10),
          Flexible(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(hintText: "Search for products...",
              border: InputBorder.none),
            ),
          ),
          Container(
            height: 25,
            width: 1.5,
            color: Colors.grey,
          ),
          IconButton(
            onPressed: (){}, 
            icon: const Icon(
              Icons.tune,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
=======

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  // State variables
  final TextEditingController _searchController = TextEditingController();
  final Set<String> _selectedCategories = {};
  double _minPrice = 0;
  double _maxPrice = 1000;
  double _minRating = 0;
  double _maxRating = 5;

  // Dummy data - You can replace this with your actual product data
  final List<String> categories = ["Men's Apparel", "Women's Apparel", "School"];
  final List<String> allProducts = ["Zeus Keyboard", "Watch", "Windbreaker Jacket", "Poliflask", "Bag", "Dress"];

  List<String> _filteredProducts = [];

  @override
  void initState() {
    super.initState();
    _filteredProducts = allProducts; // Load all products initially
  }

  // Search filter logic
  void _onSearchChanged(String query) {
    setState(() {
      _filteredProducts = allProducts.where((product) {
        final matchesQuery = product.toLowerCase().contains(query.toLowerCase());
        final matchesCategory = _selectedCategories.isEmpty || _selectedCategories.contains("Men's Apparel");
        final matchesPrice = 100.0 >= _minPrice && 100.0 <= _maxPrice; // Add actual price filter
        final matchesRating = 4.8 >= _minRating && 4.8 <= _maxRating; // Add actual rating filter
        return matchesQuery && matchesCategory && matchesPrice && matchesRating;
      }).toList();
    });
  }

  // Filter applied
  void _onFilterChanged() {
    setState(() {
      _filteredProducts = allProducts.where((product) {
        final matchesCategory = _selectedCategories.isEmpty || _selectedCategories.contains("Men's Apparel");
        final matchesPrice = 100.0 >= _minPrice && 100.0 <= _maxPrice; // Add actual price filter
        final matchesRating = 4.8 >= _minRating && 4.8 <= _maxRating; // Add actual rating filter
        return matchesCategory && matchesPrice && matchesRating;
      }).toList();
    });
  }

  // Filter dialog UI
  void _showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Apply Filters'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Category filter
              Wrap(
                children: categories.map((category) {
                  return FilterChip(
                    label: Text(category),
                    selected: _selectedCategories.contains(category),
                    onSelected: (selected) {
                      setState(() {
                        if (selected) {
                          _selectedCategories.add(category);
                        } else {
                          _selectedCategories.remove(category);
                        }
                      });
                      _onFilterChanged();
                    },
                  );
                }).toList(),
              ),
              // Price range filter
              RangeSlider(
                values: RangeValues(_minPrice, _maxPrice),
                min: 0,
                max: 1000,
                divisions: 10,
                labels: RangeLabels('₱$_minPrice', '₱$_maxPrice'),
                onChanged: (values) {
                  setState(() {
                    _minPrice = values.start;
                    _maxPrice = values.end;
                  });
                  _onFilterChanged();
                },
              ),
              // Rating filter
              RangeSlider(
                values: RangeValues(_minRating, _maxRating),
                min: 0,
                max: 5,
                divisions: 5,
                labels: RangeLabels('$_minRating★', '$_maxRating★'),
                onChanged: (values) {
                  setState(() {
                    _minRating = values.start;
                    _maxRating = values.end;
                  });
                  _onFilterChanged();
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _selectedCategories.clear();
                  _minPrice = 0;
                  _maxPrice = 1000;
                  _minRating = 0;
                  _maxRating = 5;
                });
                _onFilterChanged();
                Navigator.pop(context);
              },
              child: Text('Reset'),
            ),
            TextButton(
              onPressed: () {
                _onFilterChanged();
                Navigator.pop(context);
              },
              child: Text('Apply'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _buildSearchBar(),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () => _showFilterDialog(context),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _filteredProducts.length,
        itemBuilder: (context, index) {
          final product = _filteredProducts[index];
          return ListTile(
            title: Text(product),
            onTap: () => print("Product tapped: $product"),
          );
        },
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        controller: _searchController,
        onChanged: _onSearchChanged,
        decoration: InputDecoration(
          hintText: 'Search products...',
          border: InputBorder.none,
          icon: Icon(Icons.search),
        ),
      ),
    );
  }
}
>>>>>>> 79de6ee (Update repository with latest changes)
