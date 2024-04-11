
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:sushi_m/features/menu/data/datasources/menuDataSource.dart';
import 'package:sushi_m/features/menu/data/repositories_impl/menuRepositoryImpl.dart';
import 'package:sushi_m/features/menu/domain/repositories/menuRepository.dart';
import 'package:sushi_m/features/menu/presentation/controllers/menuSushiController.dart';

class MenuBinding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut<MenuDataSource>( () => MenuDataSource());

    Get.lazyPut<MenuRepository>(() => MenuRepositoryImpl(Get.find<MenuDataSource>()));

    Get.lazyPut<MenuSushiController>(() => MenuSushiController(Get.find<MenuRepository>() ));


  }

}