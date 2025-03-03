import 'package:flutter/material.dart';
import 'package:price_wise/screens/Home/Widget/product_model.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier {

  final List<Product> _cart = [];
  List<Product> get cart => _cart;
  void toggleFavorite(Product product)
  {
    _cart.add(product);
    }
    @override
  notifyListeners();
    

  CartProvider of(
    BuildContext context, {
    bool listen = true,
  })
  {
    return Provider.of<CartProvider> (
      context,
      listen: listen,
    );
  }
}