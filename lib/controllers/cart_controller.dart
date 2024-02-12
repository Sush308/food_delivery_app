import 'package:food_delivery_app/models/products_model.dart';
import 'package:get/get.dart';

import '../data/repository/cart_repo.dart';
import '../models/cart_model.dart';

class CartController extends GetxController{
  final CartRepo cartRepo;
  CartController({required this.cartRepo});
  Map<int, CartModel> _items = {};

  void addItem(ProductsModel product, int quantity){
    print("Length of item is " +_items.length.toString());
    
    _items.putIfAbsent(product.id!, () {
      print("Adding item to the cart "+product.id!.toString()+" quantity " +quantity.toString());
      _items.forEach((key, value) { 
        print("Quantity is "+value.quantity.toString());
      });
      
      return CartModel(
        id: product.id,
        name: product.name,
        price: product.price,
        img: product.img,
        quantity: quantity,
        isExist: true,
        time: DateTime.now().toString(),
      );
    }
    );
  }
}