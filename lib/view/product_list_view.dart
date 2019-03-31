
import 'package:product_control/entities/product.dart';

abstract class ProductListView{

  void onLoadProductComplete(List<Product> productList);
  void onLoadProductError();

}
