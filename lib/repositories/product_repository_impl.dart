import 'dart:async';
import 'dart:convert';
import 'package:product_control/entities/product.dart';
import 'package:product_control/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository{
  @override
  Future<List<Product>> fetchProduct() async {

//    String url ="apiResturl";
//    http.Response response = await http.get(url);
//    return JSON.decode(response.body);

    List<Product> productList = [];

    productList.add(Product(1,"Carne"));
    productList.add(Product(2,"Pescado"));
    productList.add(Product(3,"Leche"));
    productList.add(Product(4,"Congelados"));

    return new Future.value(productList) ;
  }

}