import 'package:product_control/dependency_injection.dart';
import 'package:product_control/entities/product.dart';
import 'package:product_control/repositories/product_repository.dart';

abstract class ProductListView{

  void onLoadProductComplete(List<Product> productList);
  void onLoadProductError();

}


class ProductPresenter{

    ProductListView _view;
    ProductRepository _productRepository;

    ProductPresenter(this._view){
      this._productRepository = new Injector().productRepository;
    }

    void loadProducts(){
      this._productRepository
          .fetchProduct()
          .then((result)=> this._view.onLoadProductComplete(result))
          .catchError((onError) => this._view.onLoadProductError());
    }

}