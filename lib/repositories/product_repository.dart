
import 'dart:async';

import 'package:product_control/entities/product.dart';

abstract class ProductRepository{

  Future<List<Product>> fetchProduct();

}


class FetchDateException implements Exception{

  final String _message;

  FetchDateException([this._message]);

  String toString(){
    if (_message == null){
      return "Exception";
    } else {
      return "Exception: ${_message}";
    }
  }

}