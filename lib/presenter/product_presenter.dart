

import 'package:product_control/di/dependency_injection.dart';
import 'package:product_control/repositories/product_repository.dart';
import 'package:product_control/view/product_list_view.dart';


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