import 'dart:async';

import 'package:product_control/entities/product.dart';
import 'package:product_control/repositories/product_repository.dart';

class ProductRepositoryMock implements ProductRepository{


  @override
  Future<List<Product>> fetchProduct() {
    List<Product> productList = [];


    for (int i = 1; i < 50; i++){
      productList.add(Product(i,"Alimento${i}"));
    }

    return new Future.value(productList) ;
  }

}