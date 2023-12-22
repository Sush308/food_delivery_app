import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/repository/popular_product_repo.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:get/get.dart';

import '../models/products_model.dart';
class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductController({
    required this.popularProductRepo
});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  int _quantity = 0;
  int get quantity => _quantity;

  Future<void> getPopularProductList()async {
    Response response = await popularProductRepo.getPopularProductList();
    if(response.statusCode == 200){
      print("got products");
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      //print(_popularProductList);
      _isLoaded = true;
      update();
    }else{

    }
  }

  void setQuantity(bool isIncrement){
    if(isIncrement){
      print("increment");
      _quantity = checkQuantity(_quantity + 1);
    }
    else{
      _quantity = checkQuantity(_quantity - 1);
    }
    update();
  }

 int checkQuantity(int quantity){
    if(quantity < 0){
      Get.snackbar("Item Count", "You can't reduce the more!!!",
      backgroundColor: AppColors.mainColor,
        colorText: Colors.white,
      );
      return 0;
    }else if(quantity>20){
      Get.snackbar("Item Count", "You can't increase the more!!!",
        backgroundColor: AppColors.mainColor,
        colorText: Colors.white,
      );
      return 20;
    }else{
      return quantity;
    }
  }
}