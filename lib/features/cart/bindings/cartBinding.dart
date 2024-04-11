
import 'package:get/get.dart';

class CartBinding extends Bindings{
  @override
  void dependencies() {

   // Get.lazyPut<CartDataSource>( () => CartDataSource());

  //  Get.lazyPut<CartRepository>(() => CartRepositoryImpl(Get.find<CartDataSource>()));

  //  Get.lazyPut<CartSushiController>(() => CartSushiController(Get.find<CartRepository>() ));



  }

}