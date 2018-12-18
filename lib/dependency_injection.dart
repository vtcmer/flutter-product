import 'package:product_control/repositories/product_repository.dart';
import 'package:product_control/repositories/product_repository_impl.dart';
import 'package:product_control/repositories/product_repository_mock.dart';

enum Flavor{MOCK, PROD}

//DI
class Injector {

  static final  Injector _singleton = new Injector._internal();

  static Flavor _flavor;

  static void configure(Flavor flavor){
    _flavor = flavor;
  }

  factory Injector(){
    return _singleton;
  }

  Injector._internal();

  ProductRepository get productRepository{
    switch(_flavor){
      case Flavor.MOCK : return new ProductRepositoryMock();
      default: return new ProductRepositoryImpl();
    }
  }


}