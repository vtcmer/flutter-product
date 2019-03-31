
import 'dart:async';

import 'package:product_control/entities/product.dart';

abstract class ProductRepository{

  Future<List<Product>> fetchProduct();

}

