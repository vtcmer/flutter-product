import 'dart:async';

import 'package:product_control/entities/product.dart';
import 'package:product_control/repositories/product_repository.dart';

class ProductRepositoryMock implements ProductRepository{


  @override
  Future<List<Product>> fetchProduct() {
    List<Product> productList = [];

    productList.add(Product(1,"Carne"));
    productList.add(Product(2,"Pescado"));
    productList.add(Product(3,"Leche"));
    productList.add(Product(4,"Congelados"));

    for (int i = 5; i < 50; i++){
      productList.add(Product(i,"Alimento${i}"));
    }

    return new Future.value(productList) ;
  }

}