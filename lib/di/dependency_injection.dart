import 'package:product_control/repositories/product_repository.dart';
import 'package:product_control/repositories/product_repository_impl.dart';
import 'package:product_control/repositories/product_repository_mock.dart';

enum Environment{MOCK, PROD}

//DI
class Injector {

  static final  Injector _singleton = new Injector._internal();

  static Environment _env;

  static void configure(Environment flavor){
    _env = flavor;
  }

  factory Injector(){
    return _singleton;
  }

  Injector._internal();

  /**
   * Recuperación del repositorio en función del entorno
   */
  ProductRepository get productRepository{
    switch(_env){
      case Environment.MOCK : return new ProductRepositoryMock();
      default: return new ProductRepositoryImpl();
    }
  }


}

